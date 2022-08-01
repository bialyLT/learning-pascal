program archivos_pas;

uses crt;

var
 archivo : text;
 linea : string;
BEGIN
	// creacion del archivo
	assign(archivo, 'respuesta.txt');
	reset(archivo);
	
	// escribir en el archivo

	writeln(archivo, 'primera linea de texto en el archivo');

	// leer el archivo
	while not eof(archivo) do 
	begin
		readln(archivo, linea);
		writeln(linea);
	end;
	// cerrar el archivo 
	close(archivo);
	
END.

