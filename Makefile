install:
	python -m pip install --upgrade pip &&\
		python -m pip install -r requirements.txt

format:
	black ./flaskr/*.py

lint:
	pylint --disable=R,C ./flaskr/*.py

test:
	python -m pytest -vv --cov=main test_application.py

all: install format lint