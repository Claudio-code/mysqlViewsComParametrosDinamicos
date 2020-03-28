use testes;

-- primeiro vamos criar um procedimento amarzenado 
-- que vai devolver o get diagnostic com o nosso valor
create function p1() returns text DETERMINISTIC NO SQL return @p1;

-- agora vamos criar uma view de um select where passando esse get como parametro do where

CREATE VIEW buscar_pessoas_e_posts AS
SELECT * FROM pessoa INNER JOIN posts ON (pessoa.id = posts.pessoaId) WHERE pessoa.id = p1(); 

-- por fim execultaremos essa query como um select um pouco diferente assim
-- passamos por referencia o parametro da nossa condição em uma sub-query e por fim 
-- chamamos a view que vai referenciar a nossa condição

select s.* from (select @p1:=1 p) parm, buscar_pessoas_e_posts s;