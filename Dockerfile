FROM alpine:3.20.2
WORKDIR /assignment
COPY . /assignment
CMD ["chmod -r +777 /assignment"]
CMD ["./assignment.sh"]
