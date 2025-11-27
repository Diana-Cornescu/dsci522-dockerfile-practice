FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

# Copy the lock files
COPY conda-linux-64.lock /environments/conda-linux-64.lock

# Install environment
RUN conda install --file /environments/conda-linux-64.lock
