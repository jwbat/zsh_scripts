# TF
`PNG -> tensor -> NumPy array`
```python
import tensorflow as tf

image_path = 'image.png'
image_tensor = tf.io.read_file(image_path)
image_tensor = tf.image.decode_image(image_tensor, channels=3)  # decode as an RGB image

image_np = image_tensor.numpy()
```

--

# OpenCV
`PNG -> NumPy array -> resize`
```python
import cv2

# the NumPy array has dimensions (height, width, channels) 
# for color images, and (height, width) for grayscale images.
image_bgr_np = cv2.imread('image.jpg')                         # cv2 reads image into a BGR format (np_array)
image_rgb_np = cv2.cvtColor(image_bgr, cv2.COLOR_BGR2RGB)      # convert to RGB format (np_array)

resized_image = cv2.resize(image_rgb_np, (200, 200))
gray_image = cv2.imread('image.png', cv2.IMREAD_GRAYSCALE)
```

`NumPy array -> PNG`
```python
import cv2
import numpy as np

image_rgb = np.zeros((100, 100, 3), dtype=np.uint8)
image_rgb[:, :, 0] = 255                                        # RGB NumPy array, assign 255 to the R channel
image_rgb[:, :] = [255, 128, 64]                                # assign all 3 channels at once, all rows & cols

image_bgr = cv2.cvtColor(image_rgb, cv2.COLOR_RGB2BGR)          # RGB -> BGR
cv2.imwrite('output.png', image_bgr)                            # save as PNG using OpenCV
```
