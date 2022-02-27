FROM myoung34/github-runner:latest

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get update \
    && apt-get install -y -q nodejs python3 make g++ build-essential libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb libvips  libvips-dev curl git libpng-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g yarn
