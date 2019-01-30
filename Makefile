.PHONY: all

all: .installed.cfg

bin/buildout: bin/pip requirements.txt
	./bin/pip install -IUr requirements.txt

bin/pip:
	virtualenv -p python2.7 --no-site-packages .

.installed.cfg: bin/buildout buildout.cfg
	./bin/buildout
