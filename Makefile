setup:
	python3 -m venv ~/.docker_circle_ci
install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=myrepolib tests/*.py
	python -m pytest --nbval notebook.ipynb
env:
	which python
	python --version
	which pytest
	which pylint

validate-circleci:
	# See https://circleci.com/docs/2.0/local-cli/#processing-a-config
	circleci config process .circleci/config.yml

run-circleci-local:
	# See https://circleci.com/docs/2.0/local-cli/#running-a-job
	circleci local execute

lint:
	# quick install hadolint curl -fLSs https://circle.ci/cli | bash
	hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 **.py

all: install lint test
