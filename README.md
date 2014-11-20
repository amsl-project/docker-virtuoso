docker-virtuoso
===============

A Dockerized Virtuoso.

```
$ docker build -t virtuoso:6.1.8 .
```

## Start a container

To persiste the data on the host's filesystem, create the folder (eg: `/virtuoso-data`), copy the `virtuoso.ini` in it and run the contaner:

```
 $ docker run -d -p 8891:8890 -p 1112:1111 --name virtuoso_681 -v /virtuoso-data:/home/virtuoso/virtuoso/var/lib/virtuoso/db -v /tmp:/tmp virtuoso:6.1.8
```

## Find out virtuoso's container ip

```
$ docker inspect --format '{{ .NetworkSettings.IPAddress }}' virtuoso_681
```

## Set a password:

```
$ isql -H <virtuoso-container-ip> exec='set password dba abetterpassword;'
```

## Enable SPARQL_UPDATE

```
$ isql -P abetterpassword -H <virtuoso-container-ip> exec='grant SPARQL_UPDATE to "SPARQL";'
```
