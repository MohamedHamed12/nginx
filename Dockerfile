# FROM nginx:stable-alpine
# COPY nginx/default.conf /etc/nginx
# COPY nginx/default.conf /etc/nginx/conf.d
# EXPOSE 80

FROM nginx

# Copy the custom NGINX configuration file into the container
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]
# volumes:
#     - ./nginx.conf:/etc/nginx/nginx.conf:ro
#   command: [nginx-debug, '-g', 'daemon off;']


# RUN rm /etc/nginx/conf.d/default.conf
# COPY default.conf /etc/nginx/conf.d
# # copy html paege         root /usr/src/project;

# COPY index.html /usr/src/project