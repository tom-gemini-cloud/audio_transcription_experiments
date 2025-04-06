from openai import OpenAI
audio_file_path = "input_audio/possibly_racist_comments_fact_check.m4a"
client = OpenAI()
audio_file= open(audio_file_path, "rb")

transcription = client.audio.transcriptions.create(
    model="gpt-4o-transcribe", 
    file=audio_file
)

print(transcription.text)