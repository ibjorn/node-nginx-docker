# [`docker compose`](https://docs.docker.com/compose/) and [devcontainer](https://code.visualstudio.com/docs/devcontainers/containers) for a [NodeJS](https://nodejs.org/) project.

## Getting Started

Clone repo.

Copy `.env.example` to `.env` and modify as needed.

Remember to add the domain name to your `hosts` file, e.g. `127.0.0.1 mydomain.local`.

Before the next step, make sure you have an npm project in the `/app` directory.

```docker-compose up``` to start containers, or in VSCode, open the command palette and select `Remote-Containers: Reopen in Container`.

Your NodeJS project goes in the `/app` directory.