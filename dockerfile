#using image(blueprint) to set in docker
#slim only downloads specific libraries
FROM python:3.12-slim  

#creating a directory in docker
WORKDIR /app

#copying everything'.' from curr directory contents to 'app' directory in docker/deployment server
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

#make port available to everyone
EXPOSE 8000

#setting env variable
ENV FLASK_APP=app.py

CMD ["python","app.py","--host=0.0.0.0"]