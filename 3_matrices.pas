//definicion de matriz: una matriz es un conjunto de elementos ordenados del mismo tipo en filas y columnas
// es decir, podemos considerarlo como un array de dos dimensiones

//programa para cargar datos por filas y por columnas en una matriz

program matrizcarga;

type    
    matrix : array[1..3,1..5] of integer;

var
    matriz : matrix;

procedure initMatrix;
var 
    i : integer;
    j : integer;
begin
    i := 1;
    while i <= 3 do
        j := 1;
        while j <= 5 do
            mat[i,j] := 0;
            j := j + 1;
        i := i + 1;    
end;

procedure cargaxfila(var mat : matrix)
var
    i : integer;
    j : integer;
begin
    i := 1;
    while i <= 3 do
        j := 1;
        while j <= 5 do
            writeln('ingrese un valor');
            readln(mat[i,j]);
            j := j + 1;
        i := i + 1;
end;

procedure cargaxcolumna(var mat : matrix)
var
    i : integer;
    j : integer;
begin
    j := 1;
    while j <= 5 do
    begin
        i := 1;
        while i <= 3 do
        begin
            writeln('ingrese un valor');
            readln(mat[i,j]);
            i := i + 1;
        end;
        j := j + 1 ;
    end;
end;

BEGIN
// llamado a la carga por fila
    cargaxfila(matriz);
// llamado a la carga por columna
    cargaxcolumna(matriz);
END.