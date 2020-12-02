FROM alpine:3

RUN apk --no-cache add \
	shadow \
	zsh \
	&& chsh -s /bin/zsh || true

ENV SHELL /usr/bin/zsh

CMD ["/bin/zsh"]
