FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY . .

# Install MkDocs and the Material theme
RUN pip install --no-cache-dir mkdocs mkdocs-material

# Build the site and move it to the 'dist' folder for Fleek to detect
RUN mkdocs build && mv site dist

# Expose port if running locally
EXPOSE 8000

# Cnfirm the build
CMD ["echo", "Build complete"]
