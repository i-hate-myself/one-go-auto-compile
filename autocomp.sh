#! /bin/bash

javac $(find . -name "*.java")
#this^ compiles the java code you dont need variables to hold the names
#because of the way javac handles names and classes
for F in *.c; do
  gcc -Wall -o ${F%.c} $F  && [[ `echo $?` ]] || echo "Error"
  mv ${F%.c} ${F%.c}".out"
done

for B in *.cpp; do
  g++ -Wall -o ${B%.cpp} $B  && [[ `echo $?` ]] || echo "Error"
  mv ${B%.cpp} ${B%.cpp}".out"
done


#this code works the same as the gcc compiler section but with c++ programs
#excluding c# these are the languages i work with and this is more of a personal project to shorten build times
#although you can fork it or whatever if you want just remember it is under the GNU license
