TARGET = cmdcalc
.PHONY: all clean run
all:$(TARGET)
main.o: main.c
	gcc -c -o main.o main.c
lab.o: lab.c
	gcc -c -o lab.o lab.c
$(TARGET): main.o lab.o
	gcc  main.o lab.o -o $(TARGET)
run:$(TARGET)
	./$(TARGET) 41 + 33 111 - 8 22 '*' 5 221 - 111 100 + 13 -k 2
clean:
	rm $(TARGET) *.o