
```zsh
pip install opencv-python
```

1. **Optional Package**:
   - For additional OpenCV functionalities, like working with video codecs,
     install `opencv-contrib-python` package, which includes extra modules.

```zsh
pip install opencv-contrib-python
```

2. **Virtual Environment**:
   - It's best practice to install it inside a virtual environment to avoid conflicts with system packages.


OpenCV has excellent support for reading and processing video files, including MP4 format.
Use OpenCV's `cv2.VideoCapture()` function to load the `MP4` video,
then iterate through the frames and save them as images.

Extract frames from an `MP4` at 1 frame per second

```python
import cv2

vidcap = cv2.VideoCapture('video.mp4')
success,image = vidcap.read()
count = 0

while success:
    cv2.imwrite(f"frame{count}.jpg", image)
    success,image = vidcap.read()
    count += 1
```

This will save the frames as frame0.jpg, frame1.jpg etc. in the current directory.

You can adjust the frame rate, image format, resolution and more using OpenCV functions.
It provides very flexible and programmatic control over extracting frames from videos.
OpenCV gives you powerful programmatic frame extraction capabilities
for MP4 and other video formats.
