# Head Pose Changer
A simple MATLAB script with a GUI that provides functionality to slightly tilt the pose of the head in a given image. Developed as a course project for EE604@IITK (Image Processing).

For an explanation of the procedure used, see `Head Pose Changer - Presentation.pdf`.

Facial landmark detection is performed using the MATLAB interface to dlib provided by [this repository](https://github.com/YuvalNirkin/find_face_landmarks/releases).

## Instructions
1. [Download](https://github.com/YuvalNirkin/find_face_landmarks/releases/download/1.2/find_face_landmarks-1.2-x64-vc14-release.zip) the binaries for facial landmark detection and extract the contents to `path/to/project/find_face_landmarks/`. You might have to copy the `.dll` files in the `find_face_landmarks/bin` folder to `find_face_landmarks/interfaces/matlab` for MATLAB to be able to find them. Note that the binaries will **only work on Windows**.
2. [Download](http://dlib.net/files/shape_predictor_68_face_landmarks.dat.bz2) the model file and extract it to `path/to/project/find_face_landmarks/models/'.
3. Replace `test_images/001.jpg` with your own image. (Or change the MATLAB script to load the image from a custom location.)
4. Run `head_pose_changer.m` and follow the on-screen instructions (read the figure titles).
5. The results should look like the demo shown in `Head Pose Changer - Demo.pdf`.
