#SETS
set J; #colonne
set I; #righe

#PARAMETRI
param C{J}; #coefficienti funzione obiettivo
param B{I}; #termini noti dei vincoli
param A{I,J}; #matrice coefficienti dei vincoli

#VARIABILI
var X{J}; #variabile decisionale

#VINCOLI
minimize z:
	sum{j in J} C[j] * X[j];
	s.t. v1 {i in I}: sum {j in J} A[i,j] * X[j]<=B[i];
	s.t.  v2 {j in J}: X[j]>=0;