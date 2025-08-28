FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends texlive-latex-recommended texlive-fonts-recommended \
    texlive-latex-extra texlive-fonts-extra texlive-xetex fonts-roboto && \
    apt-get clean -y

# Create a non-root user to run the application
RUN useradd -ms /bin/bash latexuser

WORKDIR /workspace
VOLUME ["/workspace"]

# Give the new user ownership of the workspace.
# This is mainly for cases where you run the container without mounting a host volume.
RUN chown -R latexuser:latexuser /workspace

# Switch to the non-root user
USER latexuser

# Set a default command to be executed when the container starts
CMD ["pdflatex", "--help"]
