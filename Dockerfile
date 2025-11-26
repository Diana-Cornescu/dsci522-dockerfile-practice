FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

# Copy the lock files
COPY conda-linux-64.lock /environments/conda-linux-64.lock
COPY conda-osx-64.lock /environments/conda-osx-64.lock
COPY conda-osx-arm64.lock /environments/conda-osx-arm64.lock
COPY conda-win-64.lock /environments/conda-win-64.lock

# Install environment
RUN conda create -n individual2 --file /environments/conda-linux-64.lock