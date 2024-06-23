FROM actions-runner-base

RUN apt update -y && \
    apt install curl unzip -y && \
    rm -rf /var/lib/apt/lists/*
    
USER runner