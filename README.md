# PDFLatex Docker Image

[![Docker Image CI](https://github.com/karteek/pdflatex/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/karteek/pdflatex/actions/workflows/docker-publish.yml)

## Overview
This Docker image provides a comprehensive environment for working with LaTeX and PDF generation.

## Prerequisites
- Docker installed on your system
- Basic understanding of Docker commands

## Building the Image
To build the Docker image locally, run:
```bash
docker build -t pdflatex .
```

## Running the Container
To run the container interactively:
```bash
docker run -it --rm -v $(pwd):/workspace pdflatex
```

### Volume Mounting
The `-v $(pwd):/workspace` flag mounts your current directory to the `/workspace` directory inside the container, allowing you to work with local files.

## Pulling the Image
You can pull the latest image from GitHub Container Registry:
```bash
docker pull ghcr.io/karteek/pdflatex:latest
```

## Typical Workflow
1. Navigate to your LaTeX project directory
2. Run the Docker container
3. Compile your .tex files inside the container

## Customization
Modify the `Dockerfile` to add additional LaTeX packages or tools as needed.

## Troubleshooting
- Ensure Docker is running
- Check that you have the latest image
- Verify file permissions when mounting volumes

## CI/CD
This project uses GitHub Actions for:
- Monthly automated builds
- Multi-architecture support (AMD64 and ARM64)
- Automatic image cleanup
