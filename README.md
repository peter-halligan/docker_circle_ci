# docker project setup
 
project to set up a docker build environmnet based on python

The project contains targets to allow setup, install, test, and linting of a docker build system.

## Dependencies
 hadolint:
  as root user: `curl -fLSs https://raw.githubusercontent.com/CircleCI-Public/circleci-cli/master/install.sh | bash`
                 `chmod 755 /usr/bin/local/circleci`
How to use:

1. clone repo
2. `make setup`
3. `make install`
4. `make lint` lints both the Dockerfile and python code
5. `make test` runs tests on both .py and notebooks
6. `make env` displays the installed versions and locaations of pip installs
7. `validate-circleci` checks the circleci/config.yml
8. `run-circleci-local` execute circleci locally
