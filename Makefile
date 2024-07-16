install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	python -m textblob.download_corpora

test:
	python -m pytest -vv test_*.py

format:
	black *.py nlplogic

lint:
	pylint --disable=R,C,E1120 *.py nlplogic/*.py

all: install lint test