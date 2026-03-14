# base image for the container 
FROM python:alpine

# set the working directory
WORKDIR /app

# Copy the index.html to set the working directory

COPY index.html requirements.txt /app/

# Install the dependencies

RUN pip install -r requirements.txt

# Entry point

ENTRYPOINT [ "python"]

# cmd : you can run your file 

CMD [ "app.py" ] # this is default file