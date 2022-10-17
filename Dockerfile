FROM python:3.9

WORKDIR /usr/api-test/

COPY requirements.txt ./
COPY Makefile ./
RUN make install

COPY . .
CMD ["python", "hello.py"]