FROM ahannigan/docker-arachni:latest

ARG VERSION=1.5.1

ADD reporters ./system/gems/gems/arachni-${VERSION}/components/reporters