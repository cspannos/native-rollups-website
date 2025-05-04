# Use a base image with Python and Node.js (adjust versions if needed)
FROM node:18-bullseye

# Set working directory
WORKDIR /app

# Install Python + dependencies
RUN apt-get update && apt-get install -y \
  python3 python3-venv python3-pip \
  && apt-get clean

# Copy source files
COPY . .

# Set up virtual environment
RUN python3 -m venv /venv

# Activate venv and install Python requirements
RUN . /venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt

# Install Node dependencies and build
RUN npm install
RUN npm run build

# Output directory for Fleek
RUN mkdir -p /dist && cp -r build/* /dist/

# Default command
CMD ["ls", "-la", "/dist"]
