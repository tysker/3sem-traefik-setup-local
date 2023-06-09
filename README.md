# Træfik Setup Localhost

## Setup

### 1. Install Docker

https://docs.docker.com/get-docker/

### 2. Run Docker

```bash
  docker-compose up -d
```

### 3. Stop Docker

```bash
  docker-compose down
```

### 4. Access Traefik Dashboard

```bash
  traefik.localhost
```

### 5. Access Your Rest Api

```bash
  <your_api_name>.localhost/<your_api_path>
```

### 6. Clear DB data installation

(-v) // remove volumes
```bash
 docker-compose down -v 
```

```bash
 sudo  rm -rf ./data
```
