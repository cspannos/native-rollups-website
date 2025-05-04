FROM python:3.11-slim

# Install system deps
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Create and activate virtual environment
ENV VIRTUAL_ENV=/opt/venv
RUN python -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install pip packages inside venv
RUN $VIRTUAL_ENV/bin/pip install --upgrade pip && \
    $VIRTUAL_ENV/bin/pip install mkdocs mkdocs-material

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install JS deps if needed
RUN if [ -f package.json ]; then npm install; fi

# Build the site
RUN npm run build
