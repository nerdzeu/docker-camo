# nerdzeu/camo

This repo is part of the docker enviroment for nerdz (`nerdzeu/docker`).

It contains the camo configuration and expose the port 8081.

# Usage

Use it as part of nerdzeu/docker.

If you want to pull and run the image you can do it in the classical docker way:

```sh
docker pull nerdzeu/docker-camo
docker run nerdzeu/docker-camo
```

If you want to build the image:

```sh
docker build -t <name> .
```

# Environment variables
1. Run docker-compose up to fetch the camo repo into the volume
2. Run docker-compose stop
3. Craete camo/env with the enviroment variables in the format `export VARIABLE=value`
