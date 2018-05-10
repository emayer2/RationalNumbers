#!/bin/bash
git clone https://github.com/emayer2/RationalNumbers.git
find src/hw4 -name "*.java" > @sources.txt
javac -cp ".:junit.jar:/tmp/RationalNumbers/test-bayes.jar;" @sources.txt
cd RationalNumbers/src/hw4/test
javac -cp ".:junit.jar:/tmp/RationalNumbers/test-bayes.jar;" RatPolyTest.java
for i in `seq 100`;
do
    if [ $i -eq 1 || $i -eq 100 ]; then
        java -cp ".:junit.jar:hamcrest-core.jar:/tmp/RationalNumbers/test-bayes.jar;" RatPolyTest
    else
        java -cp ".:junit.jar:hamcrest-core.jar:/tmp/RationalNumbers/test-bayes.jar;" RatPolyTest > /dev/null
    fi
done