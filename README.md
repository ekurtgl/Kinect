# Kinect

cmd for mp4:

C:\\ffmpeg\\bin\\ffmpeg.exe -f dshow -rtbufsize 2048M -i video="Kinect V2 Video Sensor" -t 2 "C:\\Users\\RSL\\Desktop\\try.mp4"


cmd for .xef:

KSUtil.exe /record "C:\\RSL\\Desktop\\tryxef" 2 "/stream color depth ir body 1> camlog2.txt 2>&1"
