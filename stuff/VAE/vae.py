'''
 a basic vae with tensorflow & keras
'''

import tensorflow as tf
from tensorflow.keras.layers import Input, Dense, Flatten, Reshape, Lambda
from tensorflow.keras.models import Model
from tensorflow.keras.losses import BinaryCrossentropy
from tensorflow.keras import backend as K
import numpy as np

# Data Preparation (e.g., MNIST)
(x_train, _), (x_test, _) = tf.keras.datasets.mnist.load_data()
x_train = x_train.astype('float32') / 255.0
x_test = x_test.astype('float32') / 255.0
x_train = np.reshape(x_train, (-1, 28, 28, 1))
x_test = np.reshape(x_test, (-1, 28, 28, 1))

# Model Architecture
latent_dim = 2

# Encoder
encoder_input = Input(shape=(28, 28, 1))
x = Flatten()(encoder_input)
x = Dense(256, activation='relu')(x)
z_mean = Dense(latent_dim)(x)
z_log_var = Dense(latent_dim)(x)

def sampling(args):
    z_mean, z_log_var = args
    epsilon = K.random_normal(shape=(K.shape(z_mean)[0], latent_dim), mean=0., stddev=1.0)
    return z_mean + K.exp(z_log_var / 2) * epsilon

z = Lambda(sampling, output_shape=(latent_dim,))([z_mean, z_log_var])
encoder = Model(encoder_input, [z_mean, z_log_var, z], name='encoder')

# Decoder
decoder_input = Input(shape=(latent_dim,))
x = Dense(256, activation='relu')(decoder_input)
x = Dense(28 * 28, activation='sigmoid')(x)
decoder_output = Reshape((28, 28, 1))(x)
decoder = Model(decoder_input, decoder_output, name='decoder')

# VAE Model
vae_output = decoder(encoder(encoder_input)[2])
vae = Model(encoder_input, vae_output, name='vae')

# Loss Function
reconstruction_loss = BinaryCrossentropy()(K.flatten(encoder_input), K.flatten(vae_output))
kl_loss = -0.5 * K.sum(1 + z_log_var - K.square(z_mean) - K.exp(z_log_var), axis=-1)
vae_loss = K.mean(reconstruction_loss + kl_loss)
vae.add_loss(vae_loss)

# Model Training
vae.compile(optimizer='adam')
vae.fit(x_train, epochs=50, batch_size=128, validation_data=(x_test, None))

# Generation Example
import matplotlib.pyplot as plt

def plot_latent_space(decoder, n=15, digit_size=28):
    figure = np.zeros((digit_size * n, digit_size * n))
    grid_x = np.linspace(-4, 4, n)
    grid_y = np.linspace(-4, 4, n)

    for i, yi in enumerate(grid_y):
        for j, xi in enumerate(grid_x):
            z_sample = np.array([[xi, yi]])
            x_decoded = decoder.predict(z_sample)
            digit = x_decoded[0].reshape(digit_size, digit_size)
            figure[i * digit_size: (i + 1) * digit_size,
                   j * digit_size: (j + 1) * digit_size] = digit

    plt.figure(figsize=(10, 10))
    plt.imshow(figure, cmap='Greys_r')
    plt.show()

plot_latent_space(decoder)
