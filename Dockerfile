FROM python:3.12

WORKDIR /app/

COPY ./main.py /app/
COPY ./requirements.txt /app/

RUN pip install -r requirements.txt

CMD uvicorn --host=0.0.0.0 --port 8000 main:app