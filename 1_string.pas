program string1;
var
    text : string;
    c : string;
    pal : string;
    i: integer;
    j: integer;
    cantWords: integer;
    wordsDm: integer;
BEGIN
    cantWords := 0;
    i := 1;
    j := 1;
    wordsDm := 0;
    pal := '';
    write('introduzca un texto: ');
    readln(text);
    while i < length(text) do 
    begin 
        c := text[i];

        // concatenar cada palabra

        while (c <> ' ') and (i <= length(text)) do
        begin
            pal := pal + text[i];
            i := i + 1;
            c := text[i];
        end;

        // condicion para saber si tiene D y m

        if pal[1] = 'D' then
            while j < length(pal) do 
            begin
                if pal[j] = 'm' then
                    wordsDm := wordsDm + 1;
                    break;
            end;

        //sumar palabra

        if pal <> '' then
            cantWords := cantWords + 1;

        // salteo a la siguiente palabra 

        while (c = ' ') and (i <= length(text)) do
        begin
            i := i + 1;
            c := text[i];
        end;
        writeln(cantWords);
        writeln('hay: ', wordsDm, ' palabras Dame');
END.
