FROM python:3.9

WORKDIR /usr/api-test/

COPY . .
CMD ["python", "hello.py"]