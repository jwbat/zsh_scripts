
1. **Dimensionality of Tensors**:
   - `1D Tensor`: Analogous to a 1D NumPy array, this is essentially a vector.
   - `2D Tensor`: Similar to a 2D NumPy array or a matrix.
   - `3D Tensor`: Often represents a collection of 2D arrays, like a stack of matrices.
   - **Higher-Dimensional Tensors**: Tensors can have higher dimensions, like 4D, 5D, or even more.
   A common example is a `4D tensor` for image data, typically structured as `[batch_size, height, width, channels]`.

2. **Conversion between Tensors and NumPy Arrays**:
   - **Tensor to NumPy Array**: You can convert a TensorFlow tensor to a NumPy array using the `.numpy()` method. This works when executing TensorFlow eagerly (default mode):
   ```python
   import tensorflow as tf

   # Example tensor
   tensor = tf.constant([[1, 2, 3], [4, 5, 6]])
   numpy_array = tensor.numpy()
   ```
   - **NumPy Array to Tensor**: You can convert a NumPy array to a TensorFlow tensor using `tf.convert_to_tensor`:
   ```python
   import numpy as np
   import tensorflow as tf

   # Example NumPy array
   numpy_array = np.array([[1, 2, 3], [4, 5, 6]])
   tensor = tf.convert_to_tensor(numpy_array)
   ```

These conversions make it easy to interchange data between 
TensorFlow tensors and NumPy arrays, allowing you to leverage
the strengths of both libraries.

In **eager execution mode**, TensorFlow tensors generally perform
the following operations faster than NumPy arrays:

1. Matrix multiplication.
2. Element-wise mathematical operations (e.g., addition, multiplication).
3. Convolutional operations.
4. Reduction operations (e.g., sum, mean).
5. Gradient computation (automatic differentiation).
