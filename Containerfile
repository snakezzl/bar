FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN bar create-db
RUN bar populate-db
RUN bar add-user -u admin -p admin
EXPOSE 5000
CMD ["bar", "run"]
