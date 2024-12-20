# Taskify


## Technologies used

[![Technologies](https://skillicons.dev/icons?i=ts,tailwind,prisma,mongodb,nextjs,react,github)](https://skillicons.dev)


## Functionality

- Authentication with password encryption
- Create Tasks
- Edit Tasks
- Delete Tasks
- Sort Tasks
- Search Tasks
- Grid/List View
- Pomodoro Timer
- Add simple todos
- Delete simple todos

## Run Locally

Clone the project


Go to the project directory

```bash
  cd my-project
```

Install dependencies

```bash
  npm i
```

Add .env

```bash
  DATABASE_URL=
  NEXTAUTH_SECRET=
```

Start the server

```bash
  npm run dev
```

## Dockerize the Project

To dockerize the project, follow these steps:

1. Ensure you have Docker and Docker Compose installed on your machine.

2. Copy the provided `.env.local.example` file to `.env.local` and fill in the required environment variables.

3. Build and run the Docker container using Docker Compose:

```bash
  docker-compose up --build
```

This will build the Docker image and start the container, mapping the necessary ports and using the environment variables from the `.env.local` file.
