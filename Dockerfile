# Use a minimal base image
FROM alpine:latest

# Install Git (if needed) and create a plugin directory
RUN apk add --no-cache git && mkdir -p /plugins

# Set the working directory
WORKDIR /plugins

# Copy plugin JAR files from the GitHub repo into the image
COPY plugins /plugins

# Expose the plugins directory (not necessary, just for reference)
VOLUME /plugins
