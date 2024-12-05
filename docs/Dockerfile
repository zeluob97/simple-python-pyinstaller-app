FROM jenkins/jenkins:lts

# Cambia al usuario root para instalar herramientas
USER root

# Instala Docker, Terraform, Python 3 y Python 2
RUN apt-get update && apt-get install -y \
    docker.io \
    wget \
    unzip \
    python3 \
    python3-pip \
    python2 \
    && wget https://releases.hashicorp.com/terraform/1.5.0/terraform_1.5.0_linux_amd64.zip \
    && unzip terraform_1.5.0_linux_amd64.zip \
    && mv terraform /usr/local/bin/ \
    && rm terraform_1.5.0_linux_amd64.zip

# Preinstalar dependencias necesarias para ejecutar Python en Alpine
RUN apt-get install -y \
    build-essential \
    libpython2.7 \
    libpython2.7-dev \
    && apt-get clean

# Cambia al usuario Jenkins
USER jenkins

# Preinstala plugins necesarios para Jenkins
RUN jenkins-plugin-cli --plugins workflow-aggregator docker-workflow

# Expone el puerto para Jenkins
EXPOSE 8080
