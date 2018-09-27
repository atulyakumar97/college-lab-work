import random
import time
import speech_recognition as sr
from rake_nltk import Rake

def recognize_speech_from_mic(recognizer, microphone):
    """Transcribe speech from recorded from `microphone`.

    Returns a dictionary with three keys:
    "success": a boolean indicating whether or not the API request was
               successful
    "error":   `None` if no error occured, otherwise a string containing
               an error message if the API could not be reached or
               speech was unrecognizable
    "transcription": `None` if speech could not be transcribed,
               otherwise a string containing the transcribed text
    """
    # check that recognizer and microphone arguments are appropriate type
    if not isinstance(recognizer, sr.Recognizer):
        raise TypeError("`recognizer` must be `Recognizer` instance")

    if not isinstance(microphone, sr.Microphone):
        raise TypeError("`microphone` must be `Microphone` instance")

    # adjust the recognizer sensitivity to ambient noise and record audio
    # from the microphone
    with microphone as source:
        recognizer.adjust_for_ambient_noise(source)
        audio = recognizer.listen(source)

    # set up the response object
    response = {
        "success": True,
        "error": None,
        "transcription": None
    }

    # try recognizing the speech in the recording
    # if a RequestError or UnknownValueError exception is caught,
    #     update the response object accordingly

    try:
        response["transcription"] = recognizer.recognize_google(audio)
    except sr.RequestError:
        # API was unreachable or unresponsive
        response["success"] = False
        response["error"] = "API unavailable"
    except sr.UnknownValueError:
        # speech was unintelligible
        response["error"] = "Unable to recognize speech"
   
    return response

if __name__ == "__main__":

    # create recognizer and mic instances
    recognizer = sr.Recognizer()
    microphone = sr.Microphone()
    print('Please speak now ... \n')
    for i in range(1):
        text = recognize_speech_from_mic(recognizer, microphone)
        
        if text["transcription"]:
            break
        if not text["success"]:
            print("I didn't catch that. What did you say?\n")
            break

        # if there was an error
        if text["error"]:
            print("ERROR: {}".format(text["error"]))
            break

    # show the user the transcription
    print("You said: {}".format(text["transcription"]))

    string=text["transcription"]
    
    print('Determining Keywords ...\n')
    r=Rake()
    r.extract_keywords_from_text(string)
    
    keywords=r.get_ranked_phrases()+string.split()
    print(keywords) # To get keyword phrases ranked highest to lowest.
    
    
