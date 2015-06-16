EBIN = ebin
SRC = src
COMPILE = erlc -pa $(EBIN) -o $(EBIN)
OBJ=example.beam
TEST=example_test

all: init ${OBJ}

init:
	mkdir -p ./ebin

%.beam: src/%.erl
	$(COMPILE) $(<)

test:all ${TEST} 
	/usr/lib/erl-test-runner/erl-test-runner ${EBIN} ${TEST}

#Test Rules
%_test: test/%_test.erl
	$(COMPILE) $(<)
