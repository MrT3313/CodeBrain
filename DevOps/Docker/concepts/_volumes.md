# Volumes

Used for data persistance -> databases / state driven applications

```cli   
docker volume --HELP
```

## Resources

1. [Docker Volumes in 6 min](https://www.youtube.com/watch?v=p2PH_YPCsis)

---

## Volume Types 

### 1. Named Volumes

_🔆 Recommended Way 🔆_

```cli  
docker run
    -v name:/path/toContainer/dataDirectory
```

### 2. Host Volumes

Docker volumes are usually created with the `docker run` command

```cli

docker run
    -v /path/toHost/dataDirectory:/path/toContainer/dataDirectory
```

### 3. Anonymous Volumes

```cli 
docker run
    -v /path/toContainer/dataDirectory
```

By NOT specifying anything on the HOST side of things Docker takes care of some things for you

```cli 
HOST:
    /var/lib/postgresql/data        --> defined by you: /path/toContainer/dataDirectory
    CONTAINER:
        /var/lib/docker/volumes/random-hash/_data --> created automatically by docker
```



