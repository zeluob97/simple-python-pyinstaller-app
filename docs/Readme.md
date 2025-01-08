# README
## Despliegue de una Aplicación Python con Jenkins y Terraform
Este documento explica cómo desplegar una aplicación Python utilizando Jenkins y Terraform. Abarca desde la configuración del entorno hasta la ejecución y creación del artefacto python.

## Fork del repositorio:
1. Forkea el repositorio de la aplicación desde 'simple-python-pyinstaller-app.'
2. Renombra la rama a 'main'.

# Paso 1: Configuración de la Imagen Personalizada de Jenkins
## Crear la Imagen Docker para Jenkins
Crea un archivo llamado Dockerfile con el contenido necesario.

## Construir la Imagen Personalizada
1. Accede a la carpeta '/docs'
2. Ejecuta el siguiente comando para construir la imagen personalizada de Jenkins:

``` bash
docker build -t myjenkins-blueocean .
```

# Paso 2: Configuración del Despliegue con Terraform

## Archivos de Configuración
Crea un archivo llamado 'main.tf' con el contenido correspondiente.

## Ejecutar Terraform
1. Acedemos desde la terminal a la carpeta '/docs'
2. Ejecutamos los siguientes comandos:

``` bash
terraform init
terraform plan
terraform apply
```


# Paso 3: Configuración de Jenkins
## Acceso al Panel de Jenkins

1. Accede a Jenkins en 'http://localhost:8080.'
2. Contraseña inicial con el siguiente comando en terminal:

``` bash
docker logs jenkins-blueocean
```

3. Ingresa la contraseña en la interfaz de Jenkins.
4. Completa la configuración inicial e instalación de plugins.
5. Crea tu propio usuario.


# Paso 4: Creación del Pipeline en Jenkins
## Crear un Nuevo Pipeline

1. En el panel de Jenkins, selecciona 'New item'.
2. Añade una descripcion
3. Activa la opcion de SCM Polling.
4. Elige la opción de Pipeline script from SCM.
5. Elige como SCM> GIT.
6. Introduce la url de tu repositorio: 'https://github.com/zeluob97/simple-python-pyinstaller-app.git'
7. Introduce correctamente la rama de tu proyecto, en nuestro caso: '*/main'
8. Asegurate de definir correctamente la ruta de jenkinsfile, en nuestro caso: docs/jenkinsfile.


# Paso 5: Prueba del Pipeline
1. En el panel de Jenkins, ejecuta el pipeline.

2. Se ejecutaran las siguientes etapas:

- Build.
- Test.
- Deliver.

## Verificación del Artefacto
Si el pipeline se ha ejecutado correctamente, el paso 5 se completara satisfactoriamente, por ultimo, el artefacto 'add2vals' se habrá generado correctamente en la pestaña de 'Status' de Jenkins.
