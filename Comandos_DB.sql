INSERT INTO himnos (num_himno,titulo,letra,fecha,fk_pagina,fk_categoria)
VALUES (7,"Cantad","Cantad alegres al Señor, Mortales todos por doquier;
Servidle siempre con fervor, Obedecedle con placer.
",1910,1,1);

UPDATE himnos
SET fecha = '1200-01-01'
WHERE id_himnos=4;


INSERT INTO paginas(num_pagina)
VALUES (14);
             
             
SELECT * FROM himnos;