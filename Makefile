.PHONY:all clean

all:test

SRC=ring_buffer.cpp test_ring_buffer.cpp

CPPFLAGS=-Wall -O3 -Werror 

LIBS=-lpthread

test:$(SRC)
	$(CXX) $^ -o $@ $(CPPFLAGS) $(LIBS)

clean:
	rm -fr test