# OpeNote

An alternative student management system.

## Requirements

```
docker
```

## Installation

First, clone this repository along with its submodules:

```bash
git clone https://github.com/dev-du-bled/openote --recursive
```

Then, deploy it using compose

```bash
docker compose up -d
```

## Setting up debug entries

By default, OpeNote does not include any default entries. However, you can add them using the provided script:

```bash
cd back
./scripts/setup_debug_entries.sh
```

Here is the user list :

```
student1@example.com : password
student2@example.com : password
teacher@example.com : password
admin@example.com : password
```
