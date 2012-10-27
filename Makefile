knn:tmp/main.o tmp/KdTree.o
	g++ -o knn tmp/main.o tmp/KdTree.o
tmp/main.o:main.cpp 
	g++ -c -o tmp/main.o main.cpp

tmp/Node.o:Node.cpp Node.h Point.h
	g++ -c -o tmp/Node.o Node.cpp Node.h Point.h

tmp/KdTree.o:KdTree.cpp KdTree.h Node.h Point.h 
	g++ -c -o tmp/KdTree.o KdTree.cpp

clean:
	rm -rf tmp/* knn *.gch *.o