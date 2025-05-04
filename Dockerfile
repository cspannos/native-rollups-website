FROM python:3.11-slim

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir mkdocs mkdocs-material
RUN mkdocs build -d dist

# Prevent container from exiting immediately
CMD ["python3", "-m", "http.server", "--directory", "dist", "8000"]
