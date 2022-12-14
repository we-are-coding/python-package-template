.PHONY: tests
tests:
	 python -m pytest tests/

.PHONY: lint
lint:
	flake8 watemplate/* --count --select=E1,E2,E3,E4,E5,E7,E9,F63,F7,F82 --show-source --statistics
	flake8 watemplate/* --count --max-complexity=10 --max-line-length=127 --statistics
	flake8 tests/* --count --select=E1,E2,E3,E4,E5,E7,E9,F63,F7,F82 --show-source --statistics
	flake8 tests/* --count --max-complexity=10 --max-line-length=127 --statistics

.PHONY: requirements
requirements:
	pip freeze > requirements.txt

.PHONY: install
install:
	python -m pip install --upgrade pip
	pip install -U pytest flake8
	pip install -r requirements.txt

.PHONY: virtualenv
virtualenv:
	python3 -m venv venv # creates the virtual environment
	source venv/bin/activate # activates the virtual environment

.PHONY: activate
activate:
	source venv/bin/activate