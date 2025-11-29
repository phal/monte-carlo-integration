PYTHON_ENV=${HOME}/.venv/monte-carlo
PYTHON_ACT=${PYTHON_ENV}/bin/activate
PYTHON_RUN=${PYTHON_ENV}/bin/python3
PYTHON_PIP=${PYTHON_ENV}/bin/pip3
PYTHON_BOOT=python3

run:
        source ${PYTHON_ACT} && ${PYTHON_RUN} run.py

build:
        @echo Nothing to build

install:
        rm -rf ${PYTHON_ENV}
        mkdir -p ${PYTHON_ENV}
        ${PYTHON_BOOT} -m venv ${PYTHON_ENV}
        source ${PYTHON_ACT} && ${PYTHON_PIP} install --upgrade pip
        source ${PYTHON_ACT} && ${PYTHON_PIP} install -r requirements.txt

clean:
        rm -rf ${PYTHON_ENV}
