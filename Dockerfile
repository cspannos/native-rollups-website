FROM python:3.11-slim

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Create and activate a Python virtual environment
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install MkDocs and Material theme in the virtual environment
RUN pip install --upgrade pip && pip install mkdocs mkdocs-material

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install npm deps if needed
RUN if [ -f package.json ]; then npm install; fi

# Build the documentation
RUN npm run build
