FROM ubuntu

WORKDIR /Guest_book

RUN apt-get update -y && apt-get install -y python3 python3-pip sqlite3 && rm -rf /var/lib/apt/lists/*
RUN pip3 install flask flask_sqlalchemy

COPY . /Guest_book
ENV FLASK_APP=.
ENV FLASK_DEBUG=1
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

ENTRYPOINT ["./run.sh"]