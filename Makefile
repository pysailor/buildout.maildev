.PHONY: all

all: .installed.cfg

py3/bin/buildout: py3/bin/pip3 requirements.txt
	./py3/bin/pip3 install -IUr requirements.txt

py3/bin/pip3:
	python3 -m venv py3

.installed.cfg: py3/bin/buildout buildout.cfg
	./py3/bin/buildout
