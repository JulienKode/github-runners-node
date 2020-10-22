FROM myoung34/github-runner:latest

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get update \
    && apt-get install -y -q nodejs build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g yarn

