from speechtotext import *

if __name__ == "__main__":

    # create recognizer and mic instances
    recognizer = sr.Recognizer()
    microphone = sr.Microphone()

    keywords=start_recording(recognizer,microphone)
    print(keywords)
