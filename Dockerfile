FROM jetbrains/teamcity-agent
LABEL maintainer="Asdrubal Gonzalez" \
    description="This image for testimg"
RUN apt update \
    && apt upgrade -y 
RUN curl -sL https://deb.nodesource.com/setup_10.x -o /root/nodesource_setup.sh \
    && sh /root/nodesource_setup.sh \
    && apt install nodejs -y \
    && npm install typescript -g
