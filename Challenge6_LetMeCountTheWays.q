/********************************************************************
/* Purpose: Solving 'AquaQ Challenge Hub' contests using KDB+
/* Challenge 6: Let me count the ways https://challenges.aquaq.co.uk/challenge/6
/* Date: Aug 2021
/* Company: Dattendriya Data Science Solutions
/* Author: S. Denakaran
/********************************************************************
no:12345;
//getting the no's from 0 so added 1
no1:no+1;
//permutations of numbers '

nop:no1*no1;
a:asc nop# til no1;
b:nop# til no1;
t:([]a:a;b:b);

//sum with the third no should give the 123 
t:update diff:no-(a+b) from t;
t1:select from t where diff>=0;

//no should have atleast one 
t2:select from t1 where (((string a) like "*1*") or ((string b) like "*1*") or ((string diff) like "*1*"));
t3:string t2;
allt:update  allt: " " sv ' flip(a;b;diff) from t3;
dist:update trim  allt from dist;

eqt:update orgcnt:{count distinct (string x)}'[allt] from dist;
//getting the one's count 
ft:update onecnt:{count x where (string x) like "*1*"}'[allt] from eqt;
select  sum onecnt from ft

//Answer : 6927 
