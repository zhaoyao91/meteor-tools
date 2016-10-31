#!/bin/bash

apt-get update

apt-get install -y \
  curl \
  build-essential \
  python \
  git \

rm -rf /var/lib/apt/lists/*