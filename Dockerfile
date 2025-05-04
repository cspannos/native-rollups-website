FROM python:3.11-slim

WORKDIR /app

COPY . /app

# Install mkdocs and mkdocs-material
RUN pip install --no-cache-dir mkdocs mkdocs-material

# Build the site
RUN mkdocs build

EXPOSE 8000

# Serve the built static site
CMD ["python3", "-m", "http.server", "--directory", "site", "8000"]
