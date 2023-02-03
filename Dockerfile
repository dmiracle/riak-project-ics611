FROM erlang:25

RUN apt-get update && apt-get install -y cmake libpam0g-dev
ADD riak-3.2.0.tar.gz /opt
RUN mv /opt/riak-riak-3.2.0 /opt/riak
WORKDIR /opt/riak
RUN make rel
COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]