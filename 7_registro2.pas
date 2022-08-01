// este programa crea un registro con 3 valores que son unas coordenadas 3d
// y devuelve la distancia al punto de origen

program registro2;

type
    register = record
        x : real;
        y : real;
        z : real;
    end;
    
var
	reg : register;

procedure initReg;
begin
	reg.x := 0;
	reg.y := 0;
	reg.z := 0;
end;

procedure getData(var regis : register);
begin
    writeln('introducir valor para x:');
    readln(regis.x);
    writeln('introducir valor para y:');
    readln(regis.y);
    writeln('introducir valor para z:');
    readln(regis.z);
end;

procedure getdistancia(regis : register);
begin
    writeln(Sqrt( Sqr(regis.x) + Sqr(regis.y) + Sqr(regis.z) ));
end;

BEGIN

    getData(reg);
    getdistancia(reg);

END.
