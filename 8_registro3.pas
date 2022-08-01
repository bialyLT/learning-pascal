//dado un registro de deportistas, hacer un programa que imprima en pantalla 
//todos los jugadores juniors que juegan al futbol
// jugadores juniors: menores de 15 años, deportes: futbol, volley, natacion
program regdefinitivo;

type
	regis = array[1..10] of record
		nombre: string;
		apellido: string;
		edad: byte; { byte es un tipo de dato que nos permite dar un valor a una variable entre 0 y 255 }
		deporte: string;
		club: string;
	end;
var
	reg : regis;
	i : byte;
	
procedure initReg;
var
	i : byte;
begin
	i := 1;
	while i <= 10 do
	begin
		reg[i].nombre := '';
		reg[i].apellido := '';
		reg[i].edad := 0;
		reg[i].deporte := '';
		reg[i].club := '';
		i := i + 1;
	end;
end;

procedure getDataReg(var regg : regis);
var
	i : byte;
begin
	i := 1;
	while i <= 10 do
	begin
		writeln('ingrese un nombre: ');
		readln(regg[i].nombre);
		writeln('ingrese un apellido: ');
		readln(regg[i].apellido);
		writeln('ingrese la edad: ');
		readln(regg[i].edad);
		writeln('ingrese el deporte: ');
		readln(regg[i].deporte);
		writeln('ingrese el club: ');
		readln(regg[i].club);
		i := i + 1;
	end;
end;
	
BEGIN
	i := 1;
	getDataReg(reg);
	while i <= 10 do
	begin
		if reg[i].edad < 15 then
		begin
			if reg[i].deporte = 'futbol' then
			begin
				writeln(reg[i].nombre, ' ', reg[i].apellido);
				writeln;
			end;
		end;
		i := i + 1;
	end;
END.
		
