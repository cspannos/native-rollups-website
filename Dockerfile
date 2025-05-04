# Base image with Python and Node.js
FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    python3-pip \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install mkdocs with the Material theme
RUN pip install --upgrade pip && \
    pip install mkdocs mkdocs-material

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install Node dependencies
RUN npm install

# Build the MkDocs site
RUN npm run build

# MkDocs output directory will be in /app/site
