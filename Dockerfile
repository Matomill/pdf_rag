FROM python:3.11-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar archivos de dependencias
COPY requirements.txt ./

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto de los archivos al contenedor
COPY . .

# Exponer el puerto por defecto de Gradio
EXPOSE 7860

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
