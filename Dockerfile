FROM python:3.7.3-stretch AS basepython
COPY ./src /src
RUN python -m pip install --upgrade setuptools pip pipenv
RUN python -m pip install -r /src/requirements_dev.txt

FROM basepython AS jupyter
RUN python -m pip install -e /src
WORKDIR /notebooks
