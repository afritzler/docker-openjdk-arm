all: java
push: push-java
.PHONY: push push-java java

TAG = 8

java:
	docker build -t afritzler/openjdk-arm .
	docker tag afritzler/openjdk-arm afritzler/openjdk-arm:$(TAG)

push-java: java
	docker push afritzler/openjdk-arm
	docker push afritzler/openjdk-arm:$(TAG)

clean:
	docker rmi afritzler/openjdk-arm:$(TAG) || :
	docker rmi afritzler/openjdk-arm || :
