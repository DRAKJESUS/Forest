# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo de dependencias e instala las bibliotecas
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copia el contenido del repositorio al contenedor
COPY . .

# Comando para ejecutar el notebook en Render
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root"]
