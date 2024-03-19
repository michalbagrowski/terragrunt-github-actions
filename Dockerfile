FROM gcr.io/google.com/cloudsdktool/google-cloud-cli:alpine

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
