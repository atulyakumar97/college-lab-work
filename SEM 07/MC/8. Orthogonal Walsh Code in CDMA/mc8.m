clc
clear all
close all

length = input('enter length of number of bits of power 2:');
walsh = hadamard(length)
codelength = input('Enter codelenth required:');
userno = input('Enter the number of users required:');
orth_mat = walsh(1:userno,1:codelength)