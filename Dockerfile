# base image for the container 
FROM python:alpine

# set the working directory
WORKDIR /app

# Copy the index.html to set the working directory

COPY index.html requirements.txt app.py  /app/

# Install the dependencies
#hello

RUN pip install -r requirements.txt

# EXPOSE THE CONTAINER PORT
EXPOSE 80
# Entry point: define main command
ENTRYPOINT ["python"]

# Default python file to execute
CMD ["app.py"]