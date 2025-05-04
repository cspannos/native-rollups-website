FROM python:3.11-slim

WORKDIR /app

COPY . /app

# Install mkdocs and mkdocs-material
RUN pip install --no-cache-dir mkdocs mkdocs-material

# Build the site and move to /app/dist so Fleek can find it
RUN mkdocs build && mv site dist

EXPOSE 8000

CMD ["python3", "-m", "http.server", "--directory", "dist", "8000"]