FROM shippable/minv2:latest

# Preinstall common gems
RUN gem install compass

# Preinstall common node versions
#RUN mkdir -p ~/.nvm/versions
RUN . /root/.nvm/nvm.sh && nvm install 0.12.7;
RUN . /root/.nvm/nvm.sh && nvm install 5.0.0;
RUN . /root/.nvm/nvm.sh && nvm alias default stable;

CMD [ "/bin/bash" ]
