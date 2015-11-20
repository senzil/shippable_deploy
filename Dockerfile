FROM shippable/minv2:latest

MAINTAINER Pablo González <pablodgonzalez@gmail.com>

# Preinstall common gems & Preinstall common node versions
RUN gem install compass \
    && mkdir -p ~/.nvm/versions \
    && /bin/bash -c "source /home/shippable/.nvm/nvm.sh" \
    && nvm install 5.0.0 \
    && nvm alias default 5.0.0 \
    && nvm use 5.0.0 \
    && npm install -g npm \
    && npm install -g grunt-cli \
    && npm install -g bower \
    && npm install -g jshint \
    && nvm install 0.12.7 \
    && nvm use 0.12.7 \
    && nvm reinstall-packages 5.0.0 \
    && nvm use 5.0.0

CMD [ "/bin/bash" ]
