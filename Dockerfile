FROM ruby:2.4.3-alpine3.6

# Install fakes3
RUN gem install fakes3

RUN mkdir -p /fakes3

WORKDIR /fakes3

ENTRYPOINT ["fakes3"]

EXPOSE 4569

CMD ["-r",  "/fakes3", "-p",  "4569"]