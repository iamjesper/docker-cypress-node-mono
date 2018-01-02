FROM node:latest

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN "deb http://download.mono-project.com/repo/debian stretch main" | tee /etc/apt/sources.list.d/mono-official.list
RUN apt-get update && apt-get install mono-devel
