FROM shippable/minv2:latest

MAINTAINER Pablo González <pablodgonzalez@gmail.com>

# Preinstall common gems
RUN gem install compass

# Preinstall common node versions
#RUN mkdir -p ~/.nvm/versions
RUN . /root/.nvm/nvm.sh && nvm install 0.12.7
RUN . /root/.nvm/nvm.sh && nvm install 5.0.0
RUN . /root/.nvm/nvm.sh && nvm alias default 5.0.0

RUN . /root/.nvm/nvm.sh && nvm use 5.0.0
RUN npm install -g npm
RUN npm install -g grunt-cli
RUN npm install -g bower
RUN npm install -g jshint

RUN . /root/.nvm/nvm.sh && nvm use 0.12.7
RUN . /root/.nvm/nvm.sh && nvm reinstall-packages 5.0.0

RUN . /root/.nvm/nvm.sh && nvm use 5.0.0

CMD [ "/bin/bash" ]
