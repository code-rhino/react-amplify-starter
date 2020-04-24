FROM gitpod/workspace-full
RUN sudo apt-get update && sudo apt-get install -y libgtk-3-0 libx11-xcb1 libnss3 libxss1 libasound2

RUN apk -v --update add \
        python \
        py-pip \   
        git \
        yarn \
        && \
      pip install awscli --upgrade && \
      aws --version && \ 
      apk -v --purge del py-pip && \
      rm -rf /var/cache/apk/*

RUN yarn global add @aws-amplify/cli && \