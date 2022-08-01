program MATRIX2;

type 
    matrix : array[1..3,1..5] of integer;

var 
    matriz : matrix;

// inicializar matriz

procedure initMatrix;
var 
    i : integer;
    j : integer;
begin
    i := 1;
    while i <= 3 do
        j := 1;
        while j <= 5 do
            matriz[i,j] := 0;
            j := j + 1;
        i := i + 1;    
end;

//proceso para sumar los elementos de la matriz por filas

procedure sumarfilas(mat : matrix; var arr : array[1..3] of integer);
var 
    i : integer;
    j : integer;
begin
    i := 1;
    while i <= 3 do
    begin
        j := 1;
        while j <= 5 do
        begin
            arr[i] := arr[i] + mat[i,j];
            j := j + 1;
        end;
        i := i + 1;
    end;
end;

//proceso para sumar los elementos de la matriz por columnas

procedure sumarcolumnas(mat : matrix, var arr : array[1..5] of integer);
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
            arr[j] := arr[j] + mat[i,j];
            i := i + 1;
        end;
        j := j + 1;
    end;
end;

//proceso para encontrar el maximo y el minimo en una matriz

procedure maxymin(mat : matrix);
var
    i : integer;
    j : integer;
    max : integer;
    min : integer;
    posmax : vector;
    posmin : vector;
begin
    i := 1;
    j := 1;    
    max := mat[i,j];
    min := mat[i,j];
    while i <= length(mat) do
    begin
        j := 1;
        while j <= length(mat[i]) do
        begin
            if max < mat[i,j] then 
                max := mat[i,j];
                posmax := [i,j];
            if min > mat[i,j] then
                min := mat[i,j];
                posmin := [i,j];
            j := j + 1;
        end;
        i := i + 1;
    end;
end;

BEGIN
    sumarfilas(matriz);
    sumarcolumnas(matriz);
    maxymin(matriz);
END.



