STATICLIB := libstatic.a
DYNAMICLIB := libdynamic.so
DYNAMICLIB2 := libdyn2dyn.so
CXXFLAGS += -g -Wall -fPIC -std=c++14
SRCS = $(wildcard *.cpp)
OBJS = $(SRCS:.cpp=.o)

all: $(STATICLIB) $(DYNAMICLIB) $(DYNAMICLIB2)

$(STATICLIB): static.o
	ar rcs $@ $^

#$@ means $(DYNAMICLIB)
#$^ means dynamic.o
$(DYNAMICLIB): dynamic.o $(STATICLIB)
	$(CXX) -shared $(LDFLAGS) -o $@ $^ $(LDLIBS)

$(DYNAMICLIB2): dyn2dyn.o $(DYNAMICLIB)
	$(CXX) -shared $(LDFLAGS) -o $@ $^ $(LDLIBS)

clean:
	@rm -f $(STATICLIB) $(DYNAMICLIB) $(DYNAMICLIB2) $(OBJS)
