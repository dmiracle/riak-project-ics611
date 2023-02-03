FROM erlang:25

ADD riak-3.2.0.tar.gz /opt
COPY entrypoint.sh /
RUN mv /opt/riak-riak-3.2.0 /opt/riak
RUN apt-get update && apt-get install -y cmake libpam0g-dev
WORKDIR /opt/riak
RUN make rel
ENTRYPOINT [ "/entrypoint.sh" ]