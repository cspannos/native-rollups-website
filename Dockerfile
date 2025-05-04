FROM python:3.11-slim

WORKDIR /app

COPY . .

# Install mkdocs and the Material theme
RUN pip install --no-cache-dir mkdocs mkdocs-material

# Build the site and rename output directory to 'dist' for Fleek
RUN mkdocs build && mv site dist