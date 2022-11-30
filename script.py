import cv2
from os import listdir
from os.path import isfile, join

dir = 'assets/animals/'

onlyfiles = [f for f in listdir(dir) if isfile(join(dir, f))]
print(onlyfiles)
for file in onlyfiles:
  vidcap = cv2.VideoCapture(dir+file)
  success,image = vidcap.read()
  if success:
    cv2.imwrite(dir+"thumbnails/"+file.replace(".mp4",".jpg") , image)     # save frame as JPEG file      
 