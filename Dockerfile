FROM circleci/openjdk:8-jdk

RUN sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
RUN sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN sudo apt-get update
RUN sudo apt-get -y install google-chrome-stable --allow-unauthenticated


RUN sudo apt-get -y install libxi6 libgconf-2-4
RUN sudo apt-get -y install xvfb gtk2-engines-pixbuf
RUN sudo apt-get -y install xfonts-cyrillic xfonts-100dpi xfonts-75dpi xfonts-base xfonts-scalable
RUN sudo apt-get -y install xvfb
RUN sudo apt-get -y install imagemagick x11-apps
RUN sudo apt-get -y install ffmpeg
RUN sudo apt-get -y install jq

RUN wget -O /tmp/allure-commandline-2.13.2.zip https://dl.bintray.com/qameta/maven/io/qameta/allure/allure-commandline/2.13.2/allure-commandline-2.13.2.zip
RUN cd /tmp && unzip /tmp/allure-commandline-2.13.2.zip && sudo mv /tmp/allure-2.13.2 /opt
ENV PATH="/opt/allure-2.13.2/bin:${PATH}"


