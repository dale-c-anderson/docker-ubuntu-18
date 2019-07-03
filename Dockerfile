# ===============================================
# Ubuntu 18 with some basic utils. For use as a starting point by more complex things.
# ===============================================
FROM ubuntu:18.04
MAINTAINER Dale C. Anderson

# ----------------
# Prevent a lot of complaining from apt
# ----------------
ARG DEBIAN_FRONTEND=noninteractive

# ----------------
# Bring installed pacakges up to date
# ----------------
RUN apt-get -qq update
RUN apt-get -yqq upgrade

# ----------------
# Prevent more complaining from apt
# ----------------
RUN apt-get install -yqq apt-utils
RUN apt-get install -yqq apt-transport-https

# ----------------
# Allow us to download and unpack things
# ----------------
RUN apt-get install -yqq curl
RUN apt-get install -yqq wget
RUN apt-get install -yqq unzip
RUN apt-get install -yqq bzip2
RUN apt-get install -yqq xz-utils

# ----------------
# Show version
# ----------------
CMD [ "cat", "/etc/lsb-release" ]
