heroku: 
	docker run --rm -v "${PWD}":/usr/src/web -w /usr/src/web -e CGO_ENABLED=0 -e GOOS=linux -e GOARCH=amd64 golang:alpine3.16 go build -v -o /usr/src/web/bin .
	heroku container:push web
