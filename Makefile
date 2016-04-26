TARGET := main
DYNAMICLIB := libdyn2dyn.so
INC = -I ./lib
SRCS = $(wildcard *.cpp)
OBJS = $(SRCS:.cpp=.o)
CXXFLAGS += -g -Wall -std=c++14
LIBS	= -L./lib -ldyn2dyn -ldynamic
all: $(TARGET)
$(TARGET): $(DYNAMICLIB)
	$(CXX) $(LDFLAGS) ${INC} -o $@ main.cpp $(LIBS)

$(DYNAMICLIB):
	echo looking into subdir : $(MAKE)
	cd lib; $(MAKE)

clean:
	@rm -f $(TARGET) $(OBJS)
	cd lib;  $(MAKE) clean

run: $(TARGET)
	@LD_LIBRARY_PATH=./lib ./$(TARGET)