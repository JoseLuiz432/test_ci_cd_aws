FROM python:3.9

WORKDIR /usr/api-test/
COPY . .
RUN make install
EXPOSE 8000
CMD ["python", "hello.py"]