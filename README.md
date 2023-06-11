# Træfik Setup Localhost


## Requirements

- [Docker](https://docs.docker.com/get-docker/) Docker installed
- [DockerHub](https://hub.docker.com/search?q=) DockerHub account

## Features

- [Traefik](https://traefik.io/) as a reverse proxy
- [Traefik Dashboard](https://docs.traefik.io/operations/dashboard/) for monitoring
- [PostgreSQL](https://www.postgresql.org/) for database
- [pgAdmin](https://www.pgadmin.org/) for database management
- [Docker](https://www.docker.com/) for containerization
- [Docker Compose](https://docs.docker.com/compose/) for container orchestration

## Setup

### 1. Fill out the docker-compose.yml file

```bash
    pgadmin:
    image: dpage/pgadmin4:7.3
    
    .....
    
    environment:
      PGADMIN_DEFAULT_EMAIL: <your_email>
      PGADMIN_DEFAULT_PASSWORD: <your_password>
```

### 2. Run Docker

```bash
  docker-compose up -d
```

### 3. Access Traefik Dashboard through browser

```bash
  traefik.localhost
```

### 4. Access Postgres Dashboard through browser

```bash
  pgadmin.localhost
```
#### 4.1. Login
- login: <your_email> (see docker-compose.yml)
- password: <your_password> (see docker-compose.yml)

#### 4.2. Add new server
- Host name/address: db
- Port: 5432
- password: <your_password> (see docker-compose.yml)

### 5. Access Your Rest Api

```bash
  <your_api_name>.localhost/<your_api_path>
```

*** 

###  Stop Docker

```bash
  docker-compose down
```

### Reset DB data installation

(-v) // remove volumes
```bash
 docker-compose down -v 
```

```bash
 sudo  rm -rf ./data
```

***

<img src="./utility/3sem-setup-local.drawio.png" alt="3 semester local environment setup">
