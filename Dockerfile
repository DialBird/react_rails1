FROM ruby:2.6.3

WORKDIR /root/react_rails

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update \
  && apt-get -y install nodejs yarn \
                        postgresql-client \
                        vim git curl less ctags unzip \
                        locales locales-all \
                        silversearcher-ag \
                        --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
