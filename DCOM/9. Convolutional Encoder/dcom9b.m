

%Transform Domain

g1=input('Generator 1 : ');
g2=input('Generator 2 : ');
m=input('Message : ');

syms x
g1_poly=poly2sym(g1,'x')
g2_poly=poly2sym(g2,'x')
m_poly=poly2sym(m,'x')

t1_poly=expand(g1_poly*m_poly)
t1=mod(sym2poly(t1_poly),2)

t2_poly=expand(g2_poly*m_poly)
t2=mod(sym2poly(t2_poly),2)

for i=1:size(t1,2)
   fprintf('%d%d ', t1(i),t2(i));
end

