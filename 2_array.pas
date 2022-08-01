// un array es un conjunto de datos del mismo tipo ordenados en fila

program array1;

type
	vector = array [1..10] of integer;

// proceso para calcular la cantidad de veces que se repite un dato en un array

procedure calcular(var arr : vector; var valor : integer);
var
	i : integer;
	aux : integer;
begin
	i := 0;
	aux := 0;
	for i := 0 to length(arr) do
	begin
		if arr[i] = valor then
			aux := aux + 1;
	end;
	writeln('se encontro: ', aux, ' veces el valor ingresado');
end;

// proceso para ordenar de menor a mayor los datos del array

procedure ordenar(arr : vector)
var
	i : integer;
	j : integer;
	aux : integer;
begin
	i := 1;
	while i < length(arr) do
	begin
		j := 1;
		while j < length(arr) do
		begin
			if arr[i] < arr[j] then
				aux := arr[j];
				arr[j] := arr[i];
				arr[i] := aux;
			j := j+1;
		end;
		i := i+1;
	end;
end;

var
	vectoringresado : vector;
	valoringresado : integer;
	i: integer;

BEGIN	
	for i := 0 to 10 do
	begin
		write('ingresa el dato ', i, ':');
		readln(vectoringresado[i]);
	end;
	writeln('ingrese un valor: ');
	readln(valoringresado);
	ordenar(vectoringresado);
	calcular(vectoringresado, valoringresado);
END.






