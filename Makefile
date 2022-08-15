.PHONY: tests
tests:
	 python -m pytest tests/

.PHONY: lint
lint:
	flake8 watemplate/* --count --select=E9,F63,F7,F82 --show-source --statistics
	flake8 watemplate/* --count --max-complexity=10 --max-line-length=127 --statistics
	flake8 tests/* --count --select=E9,F63,F7,F82 --show-source --statistics
	flake8 tests/* --count --max-complexity=10 --max-line-length=127 --statistics

.PHONY: requirements
requirements:
	pip freeze > requirements.txt

.PHONY: install
install:
	pip install -U pytest
	pip install -r requirements.txt

.PHONY: virtualenv
virtualenv:
	python3 -m venv venv # creates the virtual environment
	source venv/bin/activate # activates the virtual environment

.PHONY: activate
activate:
	source venv/bin/activate