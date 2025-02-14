import gradio as gr
from rag import respuesta

gr.ChatInterface(respuesta).launch(server_name="0.0.0.0", server_port=7860)

