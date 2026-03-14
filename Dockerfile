# base image for the container 
FROM python:alpine

# set the working directory
WORKDIR /app

# Copy the index.html to set the working directory

COPY app.py requirements.txt /app/

## Copy templates (like HTML files)
COPY templates/ /app/templates/

# Install the dependencies
#hello

RUN pip install -r requirements.txt

# EXPOSE THE CONTAINER PORT
EXPOSE 80
# Entry point: define main command
ENTRYPOINT ["python"]

# Default python file to execute
CMD ["app.py"]