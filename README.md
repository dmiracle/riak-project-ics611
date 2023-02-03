# Running riak

## Build and run docker container

Download riak:
```
wget https://github.com/basho/riak/archive/refs/tags/riak-3.2.0.tar.gz
```

Build image:
```
docker build -t raik .
```

Run container:
```
docker run -v $(pwd)/work:/work -p 8087:8087 raik
```

Run container in interactive mode with a riak volume:
```
docker run -v $(pwd)/work:/work -p 8087:8087 -p 8098:8098 raik
```

## Run on erlang docker image
```
docker run -v $(pwd)/work:/work -it erlang:25 bash
```

Install cmake
```
wget https://github.com/Kitware/CMake/releases/download/v3.25.2/cmake-3.25.2-linux-aarch64.tar.gz
tar -xzvf cmake-3.25.2-linux-aarch64.tar.gz
cd cmake-3.25.2-linux-aarch64
cp -R cmake/bin /
cp -R cmake/share /
```

Install Riak
```
wget https://github.com/basho/riak/archive/refs/tags/riak-3.2.0.tar.gz
tar -xzvf riak-3.2.0.tar.gz
mv riak-riak-3.2.0/ riak
cd riak
make rel
```

Clean
```
make distclean
```

https://www.erlang.org/doc/installation_guide/install

Running on erlang image

```    
    1  apt update
    2  apt-get install cmake
    3  cd opt/riak/
    4  make rel
    5  apt-cache search pam
    6  apt install libapam0g-dev
    7  apt install libpam0g-dev
    8  make rel
    9  ls
   10  rel/riak/bin/riak start
   11  top
   12  rel/riak/bin/riak stop
   13  rel/riak/bin/riak --help
   14  history
```