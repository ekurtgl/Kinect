# Kinect

Get it at [https://drive.google.com/file/d/1IoRfP8M8woUCttDEOQ8UfE8a0MnPfKNm/view?usp=sharing]

cmd for recording .mp4:

C:\\ffmpeg\\bin\\ffmpeg.exe -f dshow -rtbufsize 2048M -i video="Kinect V2 Video Sensor" -t 2 "C:\\Users\\RSL\\Desktop\\try.mp4"
C:\\Users\\emrek\\Desktop\\Technical\\ffmpeg\\bin\\ffmpeg.exe -f dshow -rtbufsize 2048M -i video="Kinect V2 Video Sensor" -t 2 "C:\\Users\\emrek\\Desktop\\try.mp4"


cmd for recording .xef:

KSUtil.exe /record "C:\\Users\\RSL\\Desktop\\tryxef.xef" 2 "/stream color depth ir body 1> camlog2.txt 2>&1"
