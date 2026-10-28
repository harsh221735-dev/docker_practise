#using image(blueprint) to set in docker
FROM python:3.9-slim  #slim only downloads specific libraries

#creating a directory in docker
WORKDIR /app

#copying everything'.' from curr directory contents to 'app' directory in docker/deployment server
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

#make port available to everyone
EXPOSE 8000

#setting env variable
ENV FLASK_APP = app.py

CMD ["python","run","--host=0.0.0.0"]