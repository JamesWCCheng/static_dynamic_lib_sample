STATICLIB := libstatic.a
DYNAMICLIB := libdynamic.so
CXXFLAGS += -g -Wall -fPIC -std=c++14
SRCS = $(wildcard *.cpp)
OBJS = $(SRCS:.cpp=.o)

all: $(STATICLIB) $(DYNAMICLIB)

$(STATICLIB): static.o
	ar rcs $@ $^

$(DYNAMICLIB): dynamic.o $(STATICLIB)
	$(CXX) -shared $(LDFLAGS) -o $@ $^ $(LDLIBS)

clean:
	@rm -f $(STATICLIB) $(DYNAMICLIB) $(OBJS)
