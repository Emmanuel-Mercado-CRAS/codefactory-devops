FROM python:3.9-slim
WORKDIR /app
COPY src/ /app/
RUN pip install flask
EXPOSE 5000
CMD ["python", "app.py"]

# Imagem base com Python 3.9 (versão leve, sem muitos pacotes extras)
FROM python:3.9-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia todo o conteúdo da pasta src (código) para dentro do container
COPY src/ /app/

# Instala a dependência Flask dentro do container
RUN pip install flask

# Informa que a porta 5000 será usada pela aplicação
EXPOSE 5000

# Comando para rodar a aplicação quando o container iniciar
CMD ["python", "app.py"]