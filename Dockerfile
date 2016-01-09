###################################################################################################

FROM katherinealbany/athena:stable

###################################################################################################

MAINTAINER Katherine Albany

###################################################################################################

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --quiet --yes                \
    git                                                                                           \
    vim                                                                                           \
    curl                                                                                          \
    nmap                                                                                          \
    tmux                                                                                          \
    wget                                                                                          \
    rake                                                                                          \
    ruby                                                                                          \
    golang                                                                                        \
    man-db                                                                                        \
    python                                                                                        \
    bundler                                                                                       \
    sysstat                                                                                       \
    tcpdump                                                                                       \
    aptitude                                                                                      \
    autoconf                                                                                      \
    automake                                                                                      \
    apt-utils                                                                                     \
    net-tools                                                                                     \
    ruby-dev                                                                                      \
    python-dev                                                                                    \
    python-pip                                                                                    \
    default-jdk                                                                                   \
    libyaml-dev                                                                                   \
    python-boto                                                                                   \
    build-essential                                                                               \
    ca-certificates                                                                               \

###################################################################################################

 && pip install --compile           awscli                                                        \
 && pip install --upgrade --compile awscli                                                        \

###################################################################################################

 && pip install --compile           ansible                                                       \
 && pip install --upgrade --compile ansible

###################################################################################################

CMD ["tmux"]

###################################################################################################
