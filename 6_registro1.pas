// un registro es un conjunto de datos de distinto tipo, estos datos se almacenan en espacios llamados campos
// a diferencia de un array que simplemente puede guardar datos semejantes

//este programa suma el campo x y el campo y del registro reg y lo imprime en pantalla 

program registro1;

var 
    reg : record
        x : integer;
        y : integer;
    end;

BEGIN
    reg.x := 20;
    reg.y := 30;
    writeln(reg.x + reg.y);
END.