For extracting still image frames from an MP4 video file on M1 MacBook Pro,
the most convenient built-in app would be QuickTime Player.

Here's how you can use QuickTime Player to save image frames:

1. Open the MP4 video in QuickTime Player
2. Pause the video at the frame you want to extract
3. Go to File > Save Frame As...
4. Choose a location and filename, and select the image format (PNG, JPEG, TIFF etc.)
5. Click Save

QuickTime Player makes it fairly straightforward to grab individual frames this way,
but it's a manual process having to pause and save each frame.

If you need to automate extracting frames or do it programmatically,
using a Python library would be more suitable. A popular choice is OpenCV
(Open Source Computer Vision Library).

OpenCV has excellent support for reading and processing video files,
including MP4 format. You can use OpenCV's cv2.VideoCapture() function to load the MP4 video,
then iterate through the frames and save them as images.

Here's example Python code using OpenCV to extract frames from an MP4 at 1 frame per second:

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

So in summary, QuickTime is convenient for basic manual extraction,
while OpenCV gives you powerful programmatic frame extraction capabilities
for MP4 and other video formats on your Mac.
