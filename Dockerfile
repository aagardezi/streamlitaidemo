FROM python:3.12-slim

EXPOSE 8080
WORKDIR /app
COPY . ./
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENTRYPOINT ["streamlit", "run", "main.py", "--server.port=8080", "--server.address=0.0.0.0"]