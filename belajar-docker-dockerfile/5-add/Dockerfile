
FROM alpine:3

RUN mkdir hello
# in folder text, all .txt extension will be copying to folder hello in docker image
ADD text/*.txt hello

CMD cat "hello/world.txt"