# FROM 
# COPY 
# WORKDIR 
# RUN 
# EXPOSE 
# CMD 

FROM python:3.11
COPY . /application
WORKDIR /application
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT application:application