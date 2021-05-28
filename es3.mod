set O;                                                          #x positive
set V;                                                          #righe

param c{O};
param b{V};
param a{V, O};

var x{O};

minimize z:
    sum{o in O} c[o] * x[o];                                    # funzione somma, moltiplico i valori numerici di C per le variabili X
    s.t. v1 {v in V}: sum {o in O} a[v, o] * x[o] <= b[v];      # rappresenta i vincoli <= 0
    
    s.t. v2 {o in O}: x[o] >=0;                                 # rappresenta le variabili >= 0


/*
min z= - x1 + 3x2 + x3

st. 2x1 + x2 <= 3
    x1 + x2 + 3x3 <= 6 
    2x1 + x2 + 3x3 <= 8

    x1, x2, x3 >= 0
*/
