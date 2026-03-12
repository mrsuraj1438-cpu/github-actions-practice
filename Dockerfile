FROM nginx:alpine

#set the working directory

WORKDIR /app

# Copy the index.html to working directory

COPY index.html  /usr/share/nginx/html

# Expose the port

EXPOSE 80

#CMD USE

CMD ["nginx", "-g", "daemon off;"]
