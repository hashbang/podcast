# vim:set ft=dockerfile:

FROM linuxserver/ffmpeg@sha256:c791c746b7441cd5e6dee65714933af0d1cd6c48348366715ee3c0d33a20a98f

LABEL "com.github.actions.name"="Generate Metadata"
LABEL "com.github.actions.description"="Generate metadata of MP3 files using ffprobe"
LABEL version=0.1.0
LABEL maintainer="ryan <ryan@hashbang.sh>"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
