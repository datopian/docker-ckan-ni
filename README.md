# Docker Compose for the US Deparment of Education

> This is intended just as a development setup. Don't push any production specific configuration or code, specially secrets.

Based on the main [Docker Compose setup](https://github.com/okfn/docker-ckan) for CKAN.


## Start Development

### Build the images

```
make build
```

### Start the APP

```
make start
```

### SSH into the container

```
make shell
```

### Delete all volumes

```
make remove
```
