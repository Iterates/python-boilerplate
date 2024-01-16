VENV=my-venv
SRC=src
PYTHON_VERSION="3.10"
PYTHON:=$("python")$(PYTHON_VERSION)
PIP=pip
SRC_TEST=tests
SRC_DATA=data
PROJECT_NAME=app

default:
	@$(PYTHON) $(SRC)/app.py

create-venv:
	@$(PYTHON) -m venv $(VENV)

install:
	@$(PIP) install -r requirements.txt

create-jupyter:
	jupytext --set-formats ipynb,py --to notebook $(SRC)/$(PROJECT_NAME).py --sync

sync:
	jupytext --set-formats ipynb,py $(SRC)/$(PROJECT_NAME).py --sync