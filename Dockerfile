FROM python:3.9

WORKDIR /usr/api-test/

COPY requirements.txt ./
COPY Makefile ./
RUN make install

COPY . .

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development
ENV FLASK_RUN_PORT=8000
EXPOSE 8000
CMD ["flask", "run", "--host=0.0.0.0"]