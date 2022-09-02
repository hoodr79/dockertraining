FROM ubuntu:latest

#maintainer is deprecated thats why label is used
LABEL maintainer="salmaan.iitkgp@gmail.com"


#m makes new directory, s opens the default shell
RUN useradd -ms /bin/bash salmaan

#switches to new user
USER salmaan

ADD https://github.com/springframeworkguru/springbootwebapp.git /home/salmaan

CMD echo "Hello salmaan"
CMD ps
#working directory 
WORKDIR /home/salmaan


COPY ./hello.txt /home/salmaan/

ENV MY_NAME="John Doe"
ENV MY_DOG=Rex\ The\ Dog
ENV MY_CAT=fluffy

ARG DEBIAN_FRONTEND=noninteractive

#this is just for comminucating to the developer, to expose the port during run command port is specified using p
EXPOSE 22





