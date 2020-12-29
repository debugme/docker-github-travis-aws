## React App That Reloads In Browser And Reruns Tests When App Code or Test Code

The `src` and `public` folders are not copied over from the host machine into the docker image.
Instead volumes are used to create symbolic links back from the image into the host machine.
In this way, the user can make changes on the host machine and see the changes made in the browser.
The user can also make changes on the host machine and see the unit tests rerun in the container.

## DOCKERFILE

### `How to build using this Dockerfile.dev file`

```sh
$ docker build . -f Dockerfile.dev -t debugme/dgta
```

### `How to run react application in hot reloading mode using Dockerfile.dev file`

```sh
$ docker run -it -p 3001:3000 -v /app/node_modules -v $(pwd)/public:/app/public -v $(pwd)/src:/app/src debugme/dgta
```

### `How to connect shell in a new docker container`

```sh
$ docker run -it debugme/dgta sh
```

### `How to connect to react application in docker container`

```sh
Open up http://localhost:3001 in the browser on your machine
```

### `How to run unit tests in hot reloading mode in new docker container`

```sh
$ docker run -it -v $(pwd)/src:/app/src debugme/dgta npm run test
```

## DOCKER-COMPOSE FILE

### `How to build your docker image`

```sh
$ docker-compose build
```

### `How to start up your docker image as a docker container`

```sh
$ docker-compose up
```

### `How to shut down your running docker container`

```sh
$ docker-compose down
```

### `How to build and start-up your docker image as a docker container`$

```sh
$ docker-compose up --build
```
