CC			= g++
LDFLAGS		= -L/home/alex/boost/lib -pthread -lssl -lcrypto
CFLAGS		= -I/home/alex/boost/include -c -g -Wall 
SOURCES		= server_main.cpp server.cpp endpoints/example.cpp
OBJECTS		= $(SOURCES:.cpp=.o)
EXECUTABLE	= server

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm *.o
	rm $(EXECUTABLE)
