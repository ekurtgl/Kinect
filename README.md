# Kinect

This repository contains to necessary tools to record Kinect v2 data (color, depth, IR, skeleton) and post-process to extract the skeleton. Kinect does not provide finger skeleton data per se. [Mediapipe Hands](https://google.github.io/mediapipe/solutions/hands) framework is employed to extract the finger level tracking. Body and hand skeletons are registered in the post-processing phase. `This repository is still under development. Any contributions are more than welcome!` 

<p align="center">
  <img width="460" height="300" src="https://user-images.githubusercontent.com/66868163/185696939-f9d18ed2-6fed-4d68-9741-2606fcc3833b.gif">
</p>

--------
## For raw Kinect data recording:

* Use Kinect Studio or the following shell command for recording the .xef file (raw Kinect file format):

`KSUtil.exe /record "C:\\Users\\RSL\\Desktop\\tryxef.xef" 2 "/stream color depth ir body 1> camlog2.txt 2>&1"`

## For RGB Kinect data recording:

Get ffmpeg at [https://drive.google.com/file/d/1IoRfP8M8woUCttDEOQ8UfE8a0MnPfKNm/view?usp=sharing]

* Shell command for recording .mp4:

`C:\\ffmpeg\\bin\\ffmpeg.exe -f dshow -rtbufsize 2048M -i video="Kinect V2 Video Sensor" -t 2 "C:\\Users\\RSL\\Desktop\\try.mp4"`

<!---`C:\\Users\\emrek\\Desktop\\Technical\\ffmpeg\\bin\\ffmpeg.exe -f dshow -rtbufsize 2048M -i video="Kinect V2 Video Sensor" -t 2 "C:\\Users\\emrek\\Desktop\\try.mp4"`--->


* IR and Depth frames are extracted using this [repo](https://github.com/raysworld/Xef2Mat).
