# Libraries
import gradio as gr
import cv2

# Capture video from the default webcam (or specify another camera index if needed)
cap = cv2.VideoCapture(0)

import gradio as gr
from time import sleep

def keep_repeating(video_file):
    for _ in range(10):
        sleep(0.5)
        yield video_file

gr.Interface(keep_repeating,
             inputs = None,
             outputs = gr.Video(sources=["webcam"], streaming=True, autoplay=True)
).launch()
