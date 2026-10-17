%exercitii Laboratorul 2
%ecercitiul 1:
a=2:2:100;
b=50:-2:-50;
c=1 ./ (1:100);
d=(0:99) ./ (1:100);

%exerctiu 2:Creați un vector logaritmic între 1 – 1000 cu 100 de elemente
h=logspace(0, 3, 100);

%3. Să se genereze o matrice pătratica, de dimensiune 4, ce are elemente aleatoare, uniform 
%distribuite în intervalul (0,1).
A = rand(4)

%4. rangului matricei
r=rank(A)

%5. Să se determine determinantul 
d_det = det(A)

%6. Să se transpună elementele matricii.
A_transpus = A'

%7. Să se selecteze elementele de pe poziţiile 2-6 şi 1, 4, 7
% ale vectorului: A=[1 2 3 4 5 6 7 8].
A_vec = [1 2 3 4 5 6 7 8];
rez_2_6 = A_vec(2:6);
rez_1_4_7 = A_vec([1, 4, 7]);

%8. Pentru matricea A să se selecteze: 
A = [1 2 3 4 5; 6 7 8 9 0; 1 4 6 8 6; 3 1 7 0 4];

%linia 1:
linia1=A(1,:);

%coloana 2:
col2=A(:,2);

%liniile 1-3 şi coloanele 3-5:
submatrice_c = A(1:3, 3:5);

%liniile 1,3 şi coloanele 2, 3-5:
submatrice_d = A([1, 3], 2:5);

%9. Să se rezolve sistemul : A * X = b, unde: 
A_sys = [1 2 3; 4 5 6; 7 8 0];
b_sys= [5; 8; -7];
X = inv(A_sys) * b_sys; 
% sau X = A_sys \ b_sys;

%10. Să se formeze vectorul ce are ca elemente 
% elementele de pe diagonala principală a lui A.
diag_A = diag(A_sys);

%11. Să se genereze vectorii:
x = [-10; 2];
y = [-2; -1; 1];

A_mat = x * y';
B_mat = y * x';
inmultire_pi = x * pi;
putere_B = B_mat .^ 2;
%inversa_A = inv(A_mat);
radical_A = sqrt(A_mat);
tri_sup_A = triu(A_mat);
max_medii = max(mean(A_mat));%maximul valorilor medii pe coloane pentru A
max_A_linii = max(A_mat, [], 2);%maximul pe linii pentru A
max_A_coloane = max(A_mat);% maximul pe coloane pt A
max_abs_A = max(max(A_mat));%maximul absolut pt A

%12. Căderea de tensiune v pe o rezistență este exprimată din legea lui Ohm 
% ca fiind: v=Ri, unde 
% i este curentul ce străbate rezistența R. Știind că puterea disipată de
% rezistor P=iv ,calculați
% pentru o rezistență de valoare R=10 Ohmi și un curent crescător 
% de la 0 la 10A cu increment 
% de 1, valoarea căderii de tensiune și a puterii pe rezistența R. 
% Rezultatele obținute se vor 
% stoca într-o matrice astfel: coloana 1 valoarea curentului, 
% coloana 2 valoarea tensiunii, 
% coloana 3 valoarea puteri
R = 10;
i = 0:1:10;
v = R * i;
P = i .* v;
matrice_rezultate = [i', v', P'];
%simbolul este folosit ca sa transformi din vectori rand in vectori coloana

%13. Considerând un set de 5 rezistențe de valori: 
% R1=1k, R2=100, R3=20k, R4=820, R5=37k, 
% determinați valoarea rezistenței echivalente în cazul unei 
% conectări serie și paralel a acestora.

R_val = [1000, 100, 20000, 820, 37000];
R_serie = sum(R_val);
R_paralel = 1 / sum(1 ./ R_val);
