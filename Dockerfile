FROM postgres-python3.7

RUN ln -s /usr/local/bin/python3.7 /usr/local/bin/python3
RUN ln -s /usr/local/bin/pip3.7 /usr/local/bin/pip3

RUN useradd -ms /bin/bash cobradb
USER cobradb
ENV PATH="/home/cobradb/.local/bin:${PATH}"
WORKDIR /home/cobradb

COPY ./requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

RUN git clone https://github.com/Schmoho/cobradb.git

WORKDIR /home/cobradb/cobradb

RUN python3 setup.py build

USER root
RUN python3 setup.py develop
