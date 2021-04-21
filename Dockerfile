FROM debian:bullseye-slim
LABEL maintainer "Niroshan Rajadurai <niroshan@github.com>"

RUN apt-get update && apt-get install -y \
	ca-certificates \
	lua-cjson \
	lua-iconv \
	nginx-extras \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

FROM nimmis/java:openjdk-8-jdk
