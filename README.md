# SV meal API

The SV meal API scrapes the website of the SV Group restaurant chain to find the current week's menu of each restaurant and provide it as a JSON API.

## Run maven build

```bash
./mvnw package
```

## Run as a Docker container

First, build the container:

```bash
./mvnw package && docker build -t my-username/my-svmeal-api .
```

Then, run the container:

```bash
docker run -d -p 8080:8080 --name svmeal-api my-username/my-svmeal-api
```

The application should then be reachable on localhost on port 8080.

## Deploy to OpenShift

To deploy to an OpenShift instance, log in first, create an empty project and then run the following command:

```bash
oc process -f openshift.yml -p APPLICATION_DOMAIN=svmeal-api-prod.mydomain.example | oc create -f -
```
