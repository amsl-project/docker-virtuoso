docker-virtuoso
===============

A Dockerized Virtuoso.

```
$ docker build -t virtuoso:7 .
```

## Start a container

To persiste the data on the host's filesystem, create the folder (eg: `/virtuoso-data`), copy the `virtuoso.ini` in it and run the contaner:

```
 $ docker run -d -p 8890:8890 -p 1111:1111 --name virtuoso_7 -v /virtuoso-data:/home/virtuoso/virtuoso/var/lib/virtuoso/db -v /tmp:/tmp virtuoso:7
```

## Find out virtuoso's container ip

```
$ docker inspect --format '{{ .NetworkSettings.IPAddress }}' virtuoso_7
```

## Set a password:

```
$ isql-vt -H <virtuoso-container-ip> exec='set password dba abetterpassword;'
```

## Enable SPARQL_UPDATE

```
$ isql-vt -P abetterpassword -H <virtuoso-container-ip> exec='grant SPARQL_UPDATE to "SPARQL";'
```
