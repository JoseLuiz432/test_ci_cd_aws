import flaskr
from flask import Flask

if __name__ == '__main__':
  app = flaskr.create_app()
  Flask.run(app, host='0.0.0.0', port=8000)