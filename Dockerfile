FROM jenkins/jenkins

USER root

# Install necessary dependencies and docker
RUN apt update && apt install -y curl && curl -fsSL https://get.docker.com | sh
RUN groupadd -f docker
RUN usermod -aG docker jenkins

USER jenkins
