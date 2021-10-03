#!/bin/bash

curl -O -L https://github.com/aria2/aria2/releases/download/release-1.36.0/aria2-1.36.0.tar.gz \
&& tar -xf aria2-1.36.0.tar.gz \
&& cd aria2-1.36.0 \
&& ./configure && make \
&& cd .. && rm aria2-1.36.0.tar.gz