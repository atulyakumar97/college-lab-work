from speechtotext import *

if __name__ == "__main__":

    # create recognizer and mic instances
    recognizer = sr.Recognizer()
    microphone = sr.Microphone()

    keywords=None
    
    while keywords is None:
        keywords=start_recording(recognizer,microphone)
