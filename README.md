# example local ducklake with docker compose

This repo sets up a local ducklake using `minio` (NOTE: minio is deprecated, but used in the example for its simplicity, garage can be used instead), and `postgresql`.


## Usage

### Prerequisites

- `docker`
- `docker-compose`

### Set up the dependencies

In the cloned repo run:

```bash
docker compose up -d
```

### Run a duckdb shell / ui

In the cloned repo run:

```bash
./shell.sh
```

To exit the shell type `.exit`.

