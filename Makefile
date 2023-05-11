APP=$(shell basename $(shell git remote get-url origin))
REGISTRY=olschweizer
VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux
TARGETARCH=amd64


format:
	gofmt -s -w ./

lint:
	golint

test:
	go test -v

get: 
	go get

build: format get
	CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -v -o kbot -ldflags "-X="github.com/ol-schweizer/kbot/cmd.appVersion=${VERSION}

linux: format get
	CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -v -o kbot -ldflags "-X="github.com/ol-schweizer/kbot/cmd.appVersion=${VERSION}

windows: format get
	CGO_ENABLED=0 GOOS=windows GOARCH=${TARGETARCH} go build -v -o kbot -ldflags "-X="github.com/ol-schweizer/kbot/cmd.appVersion=${VERSION}

macOS: format get
	CGO_ENABLED=0 GOOS=macOS GOARCH=${TARGETARCH} go build -v -o kbot -ldflags "-X="github.com/ol-schweizer/kbot/cmd.appVersion=${VERSION}	

image:
	docker build . -t ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}

push:
	docker push ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}

clean:
	rm -rf kbot
	docker rmi  ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}	