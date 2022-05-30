import cv2


datapath = r'C:\Users\emrek\Desktop\Technical\Kinect'
savepath = r'C:\Users\emrek\PycharmProjects\Kinect_Skeleton\images'
filename = datapath + r'\2022_04_13_10_09_59_subj5_Exp1_class17.mp4'

vidcap = cv2.VideoCapture(filename)
success, image = vidcap.read()
image = image[80::, 150:440, :]
print(image.shape)
count = 0
while success:
  cv2.imwrite(savepath + '\\frame' + f'{count:05d}' + '.jpg', image)     # save frame as JPEG file
  success, image = vidcap.read()
  if success:
    image = image[80::, 150:440, :]
  print('Read a new frame: ', count)
  count += 1

