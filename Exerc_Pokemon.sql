create database Cidade;
use Cidade;

create table treinador(
	pk_id_treinador int auto_increment primary key,
    nome_treinador varchar(100),
    idade_treinador int,
    aparencia_treinador varchar(250),
    gostos_treinador varchar(200)
);

insert into treinador (nome_treinador, idade_treinador, aparencia_treinador, gostos_treinador) values
('Alisson Magalhães', '17', 'um menino de pele morena, alto e magro, está
usando um shorts vermelho e uma camiseta basica de cor amarela, está com um chinelo e tem cabelo liso', 
'ele gosta de pokemons que é muito bom na defesa mas que tenha um bom ataque. Ele gosta de manter o equilibro entre os pokemons');

create table pokemon(
	pd_id_pokemon int auto_increment primary key,
    nome_pokemon varchar(100),
    tipo_pokemon varchar(50),
    hp_pokemon int,
    ataque_pokemon int,
    defesa_pokemon int,
    ataque_especial_pokemon int,
    defesa_especial_pokemon int,
    agilidade_pokemon int,
    geração_pokemon int
);

insert into pokemon(nome_pokemon, tipo_pokemon, hp_pokemon, ataque_pokemon, defesa_pokemon, ataque_especial_pokemon, defesa_especial_pokemon, agilidade_pokemon, geração_pokemon) values
('Bulbasaur', 'Grass e Poison', '45', '49', '49', '65', '65', '65', '1'),
('Charmander', 'Fire', '39', '52', '43', '60', '50', '65', '1'),
('Charizard', 'Fire e Flying', '78', '84', '78', '109', '85', '100', '1'),
('Pikachu', 'Eletric', '35', '55', '40', '50', '50', '90', '1'),
('Quilava', 'Fire', '58', '64', '58', '80', '65', '80', '2'),
('Furret', 'Normal', '85', '76', '64', '45', '55', '90', '2');

create table if not exists fazenda (
    id_fazenda int auto_increment primary key,
    id_treinador int,
    id_pokemon int,
    foreign key (id_treinador) references treinador(pk_id_treinador),
    foreign key (id_pokemon) references pokemon(pd_id_pokemon)
);


describe treinador; /* exibi estrutura da tabela*/
select * from treinador;