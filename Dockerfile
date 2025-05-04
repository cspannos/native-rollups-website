FROM python:3.11-slim

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir mkdocs mkdocs-material

RUN mkdocs build && mv site dist

CMD ["echo", "Build complete"]
