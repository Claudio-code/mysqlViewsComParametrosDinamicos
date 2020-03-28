
-- tabela de pessoa

use testes;

create table `pessoa` (
	`id` int auto_increment primary key,
    `name` varchar(100) not null
) ENGINE=InnoDB;

insert into testes.pessoa (name) values('kraudio');
insert into testes.pessoa (name) values('kraudio12');
insert into testes.pessoa (name) values('kraudio13');
insert into testes.pessoa (name) values('kraudio1e12e');
insert into testes.pessoa (name) values('kraudior11');
insert into testes.pessoa (name) values('kraudio12');
insert into testes.pessoa (name) values('kraudio23');
insert into testes.pessoa (name) values('kraudio41');
insert into testes.pessoa (name) values('kraudio214');

create table `posts` (
	`idPost` int auto_increment primary key,
    `text` varchar(120) not null,
    `pessoaId` int,
    FOREIGN KEY (pessoaId) REFERENCES pessoa(id)
) ENGINE=InnoDB;

insert into testes.posts (`text`, `pessoaId`) values('post1', 1);
insert into testes.posts (`text`, `pessoaId`) values('post2', 2);
insert into testes.posts (`text`, `pessoaId`) values('post1wqdq', 1);
insert into testes.posts (`text`, `pessoaId`) values('post112321', 1);
insert into testes.posts (`text`, `pessoaId`) values('post112', 2);
insert into testes.posts (`text`, `pessoaId`) values('posqdqt112', 5);
insert into testes.posts (`text`, `pessoaId`) values('posqdqt112', 5);

