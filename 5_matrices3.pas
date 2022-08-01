//revisar

// problema: un edificio de 10 pisos tiene 4 departamentos por cada planta
//se pide realizar un algoritmo que provea una forma de almacenar el gasto
//que registra cada depto en expensas(utilizar matriz). informar gasto
//promedio por piso, gasto promedio general, total a pagar discriminando
//por cada piso y total general a pagar del edificio, utilizar modulacion

program problema1;
type
    matriz : array[1..10,1..4] of integer;
    array : array[1..10] of real;



//proceso para ingresar las expensas de cada departamento

procedure ingresarexpensas(var mat : matrix)
var
    i : integer;
    j : integer;
begin
    i := 1;
    while i <= 10 do
        j := 1;
        while j <= 4 do 
            writeln('ingrese expensas del piso: ', i, ', depto: ', j);
            readln(mat[i,j]);
            j := j + 1;
        i := i + 1;
end;

//proceso para calcular gasto promedio por piso y general

procedure gastopromedio(mat : matrix; arr : promedios)
var 
    i : integer;
    j : integer;
    promedio : real;
begin
    i := 1;
    while i <= 10 do
    begin
        promedio := 0;
        j := 1;
        while j <= 4 do 
        begin
            promedio := promedio + matriz[i,j];
            j := j + 1;
        end
        arr[i] := promedio / 4;
        i := i + 1;
    end
    i := 1;
    while i <= 10 do 
    begin
        writeln('promedio del piso ', i, ': ', arr[i]);
        i := i + 1;
    end;
end;

//proceso para obtener el promedio general del gasto de expensas del edificio

procedure promgeneral(arr : promedios)
var
    i : integer;
    promgeneral : real;
begin
    i := 1;
    promgeneral := 0;
    while i <= 10 do
        promgeneral := promgeneral + arr[i];
        i := i + 1;
    writeln('el promedio general de todo el edifico es de: ', promgeneral/10);
end;

//proceso para calcular el total a pagar de cada piso

procedure totalapagarobtener(mat : matrix2)
var
    i : integer;
    j : integer;
begin
    i := 1;
    while i <= 10 do
        j := 1;
        while j <= 4 do 
            writeln('ingrese total a pagar del piso: ', i, ', depto: ', j);
            readln(mat[i,j]);
            j := j + 1;
        i := i + 1;        
end;

procedure sumartotalxpiso(mat : matrix2; arr : totalxpiso)
var
    i : integer;
    total : integer;
begin
    i := 1;
    while i <= 10 do
    begin
        j := 1;
        while j <= 4 do 
        begin
            total := total + matriz[i,j];
            j := j + 1;
        end;
        arr[i] := total;
        i := i + 1;
    end;
end;

//proceso para mostrar el total por cada piso

procedure informartotalxpiso(arr : totalxpiso)
var
    i : integer;
begin
    i := 1;
    while i <= 10 do
    begin
        writeln('el total a pagar del piso ', i, ' es de: ', totalxpiso[i]);
        i := i + 1;
    end;
end;

//proceso para sumar el total de todo el edificio

procedure totaledificio(arr : totalxpiso)
var
    i : integer;
    totaledificio : integer;
begin
    i := 1;
    totaledificio := 0;
    while i <= 10 do
    begin
        totaledificio := totaledificio + totalxpiso[i];
        i := i + 1;
    end;
    writeln('el total a pagar de todo el edificio es de: ', totaledificio)
end;

var
    matrix : matriz;
    matrix2 : matriz;
    promedios : array;
    totalxpiso : array;
BEGIN

    ingresarexpensas(matrix);
    gastopromedio(matrix, promedios);
    promgeneral(matrix);
    totalapagarobtener(matrix2);
    sumartotalxpiso(matrix2, totalxpiso);
    informartotalxpiso(totalxpiso);
    totaledificio(totalxpiso);
END.






