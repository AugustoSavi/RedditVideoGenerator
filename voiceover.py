import pathlib
from TTS.api import TTS

voiceoverDir = "{0}/Voiceovers".format(pathlib.Path().resolve())

tts = TTS(model_name="tts_models/pt/cv/vits", progress_bar=True, gpu=False)

def create_voice_over(fileName, text):
    filePath = f"{voiceoverDir}/{fileName}.mp3"
    tts.tts_to_file(text=text,file_path=filePath)
    return filePath