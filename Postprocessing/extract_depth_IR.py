import glob
import os.path
import subprocess

datapath = r'D:\Gallaudet_data\12 apr 2022\*\*Exp2*xef'
savepath = r'D:\Gallaudet_data\outputs\kinect\Exp2\IR_and_depth'
app_path = r'C:\Users\emrek\Desktop\Technical\Kinect\Xef2Mat-master\binary'

files = glob.glob(datapath)
print(len(files))

for i, f in enumerate(files):
    fname = f.split('\\')[-1][:-4]
    save_folder = savepath + '\\' + fname

    print 'Processing', i+1, '/', len(files)

    if not os.path.exists(save_folder):
        os.mkdir(save_folder)
    else:
        continue

    cmd = subprocess.Popen('Xef2Mat.exe --no-gui "' + f + '" "' + save_folder + '" ', shell=True, cwd=app_path)
    cmd.wait()

    # break



