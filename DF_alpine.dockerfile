FROM openjdk:8-jdk-alpine
LABEL maintainer = salmaan hoodr7987@gmail.com
#m makes new directory, s opens the default shell

CMD apt install git
CMD git clone https://github.com/springframeworkguru/springbootwebapp.git
#switches to new user


ADD https://github.com/springframeworkguru/springbootwebapp.git /home/salmaan/app






EXPOSE 22