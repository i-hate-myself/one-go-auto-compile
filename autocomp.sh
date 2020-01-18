#! /bin/bash

javac $(find . -name "*.java")
#this^ compiles the java code you dont need variables to hold the names
#because of the way javac handles names and classes

cprograms=$(find . -name "*.c")
#this^ finds the c programs to compile

cprograms2="${cprograms//.c}"
#this^ grabs those c files and removes the .c for the variable

exec gcc $cprogram -o $cprogram2
#this^ compiles the c programs

cpprograms=$(find . -name "*.cpp")

cpprograms2="${cprograms//.cpp}"

exec g++ $cpprogram -o $cpprogram2

#this code works the same as the gcc compiler section but with c++ programs
#excluding c# these are the languages i work with and this is more of a personal project to shorten build times
#although you can fork it or whatever if you want just remember it is under the GNU license
