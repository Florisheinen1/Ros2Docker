"""
    This file opens your webcam,
    continuously takes an image,
    and calculates its brightness
"""
import cv2
import numpy as np

# The webcam
cam = cv2.VideoCapture(0)

def take_image():
    """ Takes an image of our webcam """
    result, image = cam.read()
    if not result:
        raise Exception("Failed to read web cam")
    else:
        return image

def get_brightness(frame):
    """ Converts the given image into grey scale, and
        then calculates the averate brightness """
    grey_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    brightness = np.mean(grey_frame)
    return brightness

def run():
    try:
        while True:
            img = take_image()
            brightness = get_brightness(img)
            print("Brightness: " + str(brightness))
            input("Press enter to measure again...")
    
    except KeyboardInterrupt as e:
        print("Stopped due to keyboard")
    cam.release()
    cv2.destroyAllWindows()

run()
