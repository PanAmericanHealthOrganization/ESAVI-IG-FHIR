# Dockerfile para la creación de una imagen de Docker para el desarrollo y publicación 
# de guías de implementación HL7 FHIR utilizando SUSHI y FSH.

# Para construir la imagen, ejecutar el siguiente comando en la terminal:
# docker build -t paho-esavi/sushi:v1 -f Dockerfile .

# Para ejecutar un contenedor basado en la imagen creada, ejecutar el siguiente comando en la terminal:
# docker run --rm -it --name sushi-paho -v $(pwd):/ig -d paho-esavi/sushi:v1

# Utilizar la última versión de Ubuntu 24.04 como base
FROM ubuntu:24.04

# Mantenedor de la imagen
LABEL maintainer="Alejandro Benavides <alejandro@meddyg.com>"

# Establecer zona horaria
ENV TZ=America/Costa_Rica

# Directorio de trabajo
WORKDIR /ig

# Establecer variables de entorno para evitar interrupciones en la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Actualizar y instalar dependencias
RUN apt-get update && \
    apt-get install -y curl git gnupg2 software-properties-common build-essential wget unzip libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev libxrender1 libxt6 libxtst6 libxi6 && \
    rm -rf /var/lib/apt/lists/*

# Instalación de Java JDK 22 manualmente
RUN wget https://download.oracle.com/java/22/archive/jdk-22.0.1_linux-x64_bin.deb -O /tmp/jdk-22_linux-x64_bin.deb && \
    dpkg -i /tmp/jdk-22_linux-x64_bin.deb && \
    rm /tmp/jdk-22_linux-x64_bin.deb

# Establecer JAVA_HOME y agregar Java al PATH
ENV JAVA_HOME="/usr/lib/jvm/java-22-openjdk"
ENV PATH="${JAVA_HOME}/bin:${PATH}"

# Instalación de Ruby y dependencias
RUN apt-get update && \
    apt-get install -y rbenv ruby-build ruby-dev ruby-full build-essential zlib1g-dev && \
    rm -rf /var/lib/apt/lists/*

# Instalación de Jekyll y Bundler
RUN gem install jekyll bundler

# Instalación de Node.js 22.10 y npm
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g npm

# Agregamos el directorio de trabajo como directorio seguro
RUN git config --global --add safe.directory /ig

# Instalación de fsh-sushi de manera global desde npm
RUN npm install -g fsh-sushi

# Comando por defecto al iniciar el contenedor
CMD ["bash"]
