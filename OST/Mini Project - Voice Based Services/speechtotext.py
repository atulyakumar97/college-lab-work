import random
import time
import speech_recognition as sr

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

    print('Audio Recorded')

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

def start_recording(recognizer,microphone):
    try:
        print('\nPlease speak now ...')
        for i in range(1):
            text = recognize_speech_from_mic(recognizer, microphone)
            
            if text["transcription"]:
                # show the user the transcription
                print("You said: {}".format(text["transcription"]))
                break
            
            if not text["success"]:
                print("I didn't catch that. What did you say?\n")
                break

            # if there was an error
            if text["error"]:
                print("ERROR: {}".format(text["error"]))
                break


        string=text["transcription"]
        keywords=string.split()
        return keywords
    except AttributeError:
        pass
        
        
