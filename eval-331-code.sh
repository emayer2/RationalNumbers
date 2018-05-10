#!/bin/bash
git clone https://github.com/emayer2/RationalNumbers.git
cd RationalNumbers/src/hw4/test
javac -cp ".:junit.jar:/tmp/RationalNumbers/test-bayes.jar;" RatPolyTest.java
java -cp ".:junit.jar:hamcrest-core.jar:/tmp/RationalNumbers/test-bayes.jar;" RatPolyTest