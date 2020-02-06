# validation-gwt-25

## Purpose

The idea of this project is to test the [RPC call](http://www.gwtproject.org/doc/latest/tutorial/RPC.html) from GWT.
We used the `Validation` project from the samples of the [GWT 2.5](http://www.gwtproject.org/versions.html) artefact.

## Launch

Launch the project using Docker:

```
docker container run -ti -p 8080:8080 --rm jlandure/gwt-25
```

Open your browser on `localhost:8080`.

## Build & package

First, package the `jar` using Maven & Docker:

```
docker container run -v $HOME/.m2:/root/.m2 -v $PWD:/usr/src/app -w /usr/src/app maven:3-alpine mvn package
```

Then, build the image:

```
docker build -t jlandure/gwt-25 .
```

NB: FYI, `gwt-user.jar` is needed in the classpath in the server side.

Finally, push the image:

```
docker login
docker push jlandure/gwt-25
```
