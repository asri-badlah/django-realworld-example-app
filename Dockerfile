# set base image (host OS)
FROM python:3.5.2-slim

# set the working directory in the container
WORKDIR /app

# copy the dependencies file to the working directory
COPY requirements.txt requirements.txt

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY . .

# expose port 4000
EXPOSE 4000

# command to run on container start
CMD ["python", "manage.py", "runserver","0.0.0.0:4000"]