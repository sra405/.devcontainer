# Dev Container

Used to help dev in areas that end up being tricky locally. Utilises homebrew and picks up my regular backups to ensure a semi-consistent dev environment.

## Getting started

First pull this repo and add to the root of the directory you want to load up in VSCode; most people like individual repos but I like to load my `repos` directory so I can easily switch.

Once pulled VSCode should recognise it and ask if you want to reopen the window in a container, click `Reopen in container`. If this doesn't appear just click the double arrows at the bottom left of VSCode and select `Reopen in container`.

First time will take a while. You're pulling my docker image from a linuxbrew build found [here](https://github.com/sra405/homebrew).

Bob's you uncle. You should see a randomly named container if you list your containers `docker ps`.

## TODO

- Speed up the environment - there are several ways of doing this so I'll need to investigate
- Sort out auto connection to hosts docker socket (currently need to chmod /var/run/docker.sock manually)
- Trim the fat from the `sra405/homebrew` image
- Investigate port forwarding and interactions with other containers
