FROM python:3.10-slim

WORKDIR /app 

COPY . .

RUN sudo apt-get update

RUN sudo apt-get install popper-utils -y

RUN pip3 install -r requirements.txt

CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]