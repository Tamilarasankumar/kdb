/********************************************************************/
/* Purpose: Solving 'AquaQ Challenge Hub' contests using KDB+
/* Challenge #4: This is good co-primen https://challenges.aquaq.co.uk/challenge/4
/* Date: May 2021
/* Company: Dattendriya Data Science Solutions
/* Author: Dinesh K
/********************************************************************/

/--------------Q-Script----------------------------------/
gcd:{$[y=0;:x;:gcd[y;x mod y]]};
sum ({val:gcd[x;987820];$[val=1;:x;0]}each 1+til (987820-1)) except 0
/---------------------------------------------------------/
/Ans:195153719200
