FROM python:3.11-slim

# Set working dir
WORKDIR /app

# Copy all files into the container
COPY . .

# Install MkDocs and the Material theme
RUN pip install --no-cache-dir mkdocs mkdocs-material

# Build the site and move it to the 'dist' folder for Fleek to detect
RUN mkdocs build && mv site dist

# If running locally, expose port
EXPOSE 8000

# Confirm the build; Fleek will serve /dist
CMD ["echo", "Build complete"]
