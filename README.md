# OpeNote

An alternative student management system.

## Requirements

1. docker
2. docker-compose

## Installation

First, clone this repository along with its submodules:

```bash
git clone https://github.com/dev-du-bled/openote --recursive
```

Then, deploy it using compose

```bash
docker compose up -d
```

## Logging in
Congrats, you just deployed your first openote instance !!! 🎉🎉
To start your incredible school admin journey, we prepared an admin account for you !! Try to log in as `admin@example.com` with password `password` !!

> [!CAUTION]
> For security reasons, you **should** change the email and password of this default admin account.

## Setting up debug entries

By default, OpeNote only includes a default admin user, which isn't ideal for development purposes. As such, you can add debug entries using the follow commands

```bash
cd back
./scripts/setup_debug_entries.sh
```

Here is the list of premade users you can log in as :

```
student1@example.com : password
student2@example.com : password
teacher@example.com : password
admin@example.com : password
```

## Resetting the database
All data is stored in the accordingly named folder : `data`

Resetting the database is as simple as
- tearing down the stack with docker compose: `docker compose down`
- deleting the data folder: `rm -rf data` (this might require sudo depending on the runtime used or user)
- deploying it again: `docker compose up -d`

> [!CAUTION]
> This **cannot be undone**. **BE CAREFULL**
