# Use Jenkins inbound agent as base image
FROM jenkins/inbound-agent:latest

# Install Rust and common build dependencies
USER root

# Install required packages
RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    pkg-config \
    libssl-dev \
    git

# Install rustup and Rust (latest stable)
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y \
    && . $HOME/.cargo/env \
    && rustc --version \
    && cargo --version

# Add Rust binaries to PATH for all users
ENV PATH="/root/.cargo/bin:${PATH}"

# Switch back to Jenkins agent user
USER jenkins

# Default command (from Jenkins inbound agent)
ENTRYPOINT ["jenkins-agent"]
