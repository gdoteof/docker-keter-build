FROM gdoteof/ghc


RUN apt-get update && apt-get install -y git zlib1g-dev libghc-unix-compat-dev 

ENV HOME /root

WORKDIR /root

RUN mkdir -p .ssh
RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config

RUN git clone  https://github.com/snoyberg/keter.git

RUN cd keter

RUN cabal update

WORKDIR /root/keter


ENV LANG C.UTF-8

RUN cabal install --only-dependencies .
RUN cabal install .
RUN cabal configure && cabal clean && cabal build
