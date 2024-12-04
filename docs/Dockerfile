FROM jenkins/jenkins:lts

# Cambia al usuario root para instalar herramientas
USER root

# Instala Docker y Terraform
RUN apt-get update && apt-get install -y docker.io wget unzip && \
    wget https://releases.hashicorp.com/terraform/1.5.0/terraform_1.5.0_linux_amd64.zip && \
    unzip terraform_1.5.0_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_1.5.0_linux_amd64.zip

# Cambia al usuario Jenkins
USER jenkins

# Preinstala plugins necesarios para Jenkins
RUN jenkins-plugin-cli --plugins workflow-aggregator docker-workflow

# Exponer el puerto para Jenkins
EXPOSE 8080
