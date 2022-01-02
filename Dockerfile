FROM nikolaik/python-nodejs:python3.10-nodejs17
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir KyyMusic \
    && cd KyyMusic \
    && git clone https://github.com/muhammadrizky16/KyyMusic
WORKDIR /KyyMusic/KyyMusic
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD python3 -m Music
