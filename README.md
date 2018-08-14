# Daily Advisor

Application for trainer and their students to keep them in progress, to make conversation and to stay in touch.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You need [Docker][1] and _docker-compose_ to run application in development mode

Pull repo:

```
git@github.com:code-pride/DailyAdvisorCompose.git
```

Then, u need to run

```
$ sh dailyadvisor-init.sh
```

to get all needed repos.

After pulling all needed repos, create `.env.development` file in _DailyAdvisor-API_ folder, and insert special credential for your development. (ready to use `.env.development` file is available on dropbox)

Make sure, that downloaded file have 'dot' as first char in file name. If not, add one.

### Development

First enter repo root folder and run

```
$ docker-compose build
```

then run

```
$ docker-compose up
```

Be sure that you have port `8091`, `3000`, `5432` available on your host machine.

Then to populate database with initial data you need to make HTTP GET request on:

```
http://localhost:8091/populate
```

The application now is ready on:

```
http://localhost:3000
```

## Running next time

When you end your work and come back later, u have to change one thing to be sure that data in database will stay and not be **rewritten**:

go to `src/main/resources/application.properties` in `DailyAdvisor-API` project. And change this line:

```
spring.jpa.hibernate.ddl-auto = create
```

to this line:

```
spring.jpa.hibernate.ddl-auto = update
```

now, you can run project without building it, so only command:

```
docker-compsoe up
```

and you are ready to go!

## Running the tests

There are multiple type of tests that you can run.

### End to end tests

To run e2e tests run:

```
$ npm run e2e
```

### Frontend unit tests

To run frontend unit tests run:

```
npm run test
```

### Backend tests

In backend root folder launch commands:

```
$ ./gradlew testClasses
```

## Authors

- **[Bartek][5]**
- **[benq95][6]**
- **[makowskimarek][7]**
- **[Marcin Krawczyk][8]**
- **[Tomasz Ferens][9]**

[1]: https://www.docker.com/
[2]: https://nodejs.org/en/
[3]: http://localhost:3000
[4]: https://github.com/indexzero/http-server
[5]: https://github.com/BartoszBaczek
[6]: https://github.com/benq95
[7]: https://github.com/makowskimarek
[8]: https://github.com/marckraw
[9]: https://github.com/tomaszferens
