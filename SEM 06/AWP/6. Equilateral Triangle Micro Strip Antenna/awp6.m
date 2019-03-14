%ETMSA

clc;
clear all;
close all;

f=input('enter freq in ghz : ');
er = input('enter dielectric constant : ');

h=0.16;
se=2*30/(3*f*sqrt(er))
s=se-(4*h)/(sqrt(er))

