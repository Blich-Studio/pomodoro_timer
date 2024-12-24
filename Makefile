CXX = g++
CXXFLAGS = `pkg-config --cflags gtk4`
LDFLAGS = `pkg-config --libs gtk4`

TARGET = pomodoro_timer

all: $(TARGET)

$(TARGET): main.cpp
	$(CXX) main.cpp -o $(TARGET) $(CXXFLAGS) $(LDFLAGS)

clean:
	rm -f $(TARGET)
