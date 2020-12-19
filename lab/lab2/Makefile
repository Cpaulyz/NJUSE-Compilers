include Makefile.git

CC = gcc -g
CXX = g++ -g
FLEX = flex
BISON = bison
CFLAGS = -std=c99
CXXFLAGS = -std=c++11

CFILES = $(shell find . -name "*.c")
CXXFILES = $(shell find . -name "*.cpp")
OBJS = $(CFILES:.c=.o) $(CXXFILES:.cpp=.o)
LFILE = $(shell find . -name "*.l")
YFILE = $(shell find . -name "*.y")
LFC = $(shell find . -name "*.l" | sed s/[^/]*\\.l/lex.yy.c/)
YFC = $(shell find . -name "*.y" | sed s/[^/]*\\.y/syntax.tab.c/)
LFO = $(LFC:.c=.o)
YFO = $(YFC:.c=.o)

parser: syntax $(filter-out $(LFO),$(OBJS))
	$(call git_commit,"make")
	$(CXX) -o parser $(filter-out $(LFO),$(OBJS)) -lfl -ly

syntax: lexical syntax-c
	$(CC) -c $(YFC) -o $(YFO)

lexical: $(LFILE)
	$(FLEX) -o $(LFC) $(LFILE)

syntax-c: $(YFILE)
	$(BISON) -o $(YFC) -d -v $(YFILE)

-include $(patsubst %.o, %.d, $(OBJS))

test: parser
	$(call git_commit, "test")
	@./parser ./tests/test1.cmm out.ir

clean:
	rm -f parser src/syntax.output src/syntax.tab.o
	rm -f $(OBJS) $(OBJS:.o=.d)
	rm -f $(LFC) $(YFC) $(YFC:.c=.h)
	rm -f *~

submit: clean
	git gc
	STUID=$(STUID) STUNAME=$(STUNAME) bash -c "$$(curl -s http://problemoverflow.cn/compilers/scripts/submit.sh)"

.PHONY: test clean submit

