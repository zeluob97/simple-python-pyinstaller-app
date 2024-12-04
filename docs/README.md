# Despliegue de Jenkins con Docker y Terraform

Este proyecto tiene como objetivo desplegar un servidor Jenkins utilizando un contenedor Docker personalizado y gestionar recursos con Terraform. A continuación, se describen los pasos necesarios para realizar este despliegue.

## Pasos para el despliegue

### 1. Clonar este repositorio
Clona este repositorio en tu máquina local utilizando el siguiente comando:

```bash
git clone https://github.com/<tu-usuario>/<tu-repositorio>.git

```

### 2. Acceder a la carpeta docs
Accedemos desde la terminal a la carpeta 'docs':
```bash
cd docs

```

### 3. Crear la imagen personalizada de Jenkins
Construye la imagen de Docker personalizada para Jenkins utilizando el archivo Dockerfile:
```bash
docker build -t custom-jenkins:latest -f Dockerfile .

```

### 4. Ejecutar el contenedor de Jenkins
Inicia el contenedor de Jenkins utilizando la imagen personalizada que acabas de construir:
```bash
docker run -d -p 8085:8080 --name jenkins-server custom-jenkins:latest

```

### 5. Acceder a la interfaz de Jenkins
Abre un navegador web y accede a la interfaz de Jenkins utilizando la siguiente URL:
```
http://localhost:8085

```

### 6. Configurar Terraform para gestionar recursos
Terraform se utiliza para gestionar la infraestructura del proyecto. Sigue estos pasos:
```bash
cd docs
terraform init
terraform apply -auto-approve

```

### 7. Verificar el despliegue
Nos aseguramos de que el contenedor de Jenkins está corriendo:
```bash
docker ps

```
