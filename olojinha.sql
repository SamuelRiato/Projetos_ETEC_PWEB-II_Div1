create database olojinha;
use olojinha;
create table categorias
(
    catid int primary key auto_increment,
    catnome varchar(150),
    catativo boolean default 1
);
create table subcategorias
(
    subid int primary key auto_increment,
    subnome varchar(150),
    subcatid int,
    subativo boolean default 1,
    constraint fksubcatid foreign key (subcatid) references categorias (catid)
);
create table produtos
(
    proid int primary key auto_increment,
    pronome varchar(150),
    prodescricao varchar(1024),
    provalorcusto double,
    provalorvenda double,
    proquantidade int,
    prosubid int,
    proativo boolean default 1,
    constraint fkprosubid foreign key (prosubid) references subcategorias (subid)
);
create table fotosproduto
(
    fotid int primary key auto_increment,
    fotcaminho varchar(1024),
    fotdescricao varchar(150),
    fotproid int,
    fotprincipal boolean default 0,
    fotativo boolean default 1,
    constraint fkfotproid foreign key (fotproid) references produtos (proid)
);

insert into categorias (catnome) values
('Acessórios para Veículos'),
('Agro'),
('Alimentos e Bebidas'),
('Pet Shop'),
('Antiguidades e Coleções'),
('Arte, Papelaria e Armarinho'),
('Bebês'),
('Beleza e Cuidado Pessoal'),
('Brinquedos e Hobbies'),
('Calçados, Roupas e Bolsas'),
('Câmeras e Acessórios'),
('Carros, Motos e Outros'),
('Casa, Móveis e Decoração'),
('Celulares e Telefones'),
('Construção'),
('Eletrodomésticos'),
('Eletrônicos, Áudio e Vídeo'),
('Esportes e Fitness'),
('Ferramentas'),
('Festas e Lembrancinhas'),
('Games'),
('Imóveis'),
('Indústria e Comércio'),
('Informática'),
('Ingressos'),
('Instrumentos Musicais'),
('Joias e Relógios'),
('Livros, Revistas e Comics'),
('Música, Filmes e Seriados'),
('Saúde'),
('Serviços'),
('Mais Categorias');

select 
    proid,
    pronome,
    prodescricao,
    provalorcusto,
    provalorvenda,
    proquantidade,
    prosubid,
    proativo,
    subnome,
    subcatid,
    subativo,
    catnome,
    catativo
from 
    produtos,subcategorias,categorias
where 
    prosubid = subid
and
    subcatid = catid

insert into subcategorias (subnome,subcatid) values
('Acessórios para console', 21),
('Consoles', 21),
('Artes Marciais e Boxe', 18),
('Hóquei', 18);

insert into produtos (pronome,prodescricao,provalorcusto,provalorvenda,proquantidade,prosubid) values
('Controle PS5 Dualsense Midnight Black Preto Sem Fio Sony Original', 'Com o Controle PS5  (Dualsense) - Sony sinta o feedback fisicamente responsivo às suas ações no jogo com atuadores duplos que substituem os motores tradicionais. Em suas mãos, essas vibrações dinâmicas podem simular a sensação de tudo, desde ambientes até o recuo de diferentes armas. Experimente vários níveis de força e tensão conforme você interage com o equipamento e os ambientes do jogo. Desde puxar a corda do arco cada vez mais tensa até pisar no freio em um carro em alta velocidade, sinta-se fisicamente conectado às suas ações na tela. Com o Controle PS5  (Dualsense) - Sony converse com amigos online usando o microfone embutido - ou conectando um fone de ouvido ao conector de 3,5 mm. Ligue e desligue facilmente a captura de voz a qualquer momento com o botão dedicado para silenciar. Capture e transmita seus momentos de jogo mais épicos com o botão criar. Com base no sucesso do botão pioneiro SHARE, "criar" oferece aos jogadores mais maneiras de produzir conteúdo de jogos e transmitir suas aventuras ao vivo para o mundo.', 400.90, 439.90, 134, 1),

('Leitor de Disco Para Playstation 5 Slim Digital ou PS5 PRO - MODELO CFI-ZDD1', 'Produto Novo,Lacrado, Original Sony, Garantia de 3 meses, Sem a possibilidade de ser taxado "Estoque no Brasil"', 600, 799.99, 29, 1),

('Console PS5 Slim Digital 825GB SSD + Astro Bot + Gran Turismo 7 Sony', 'Experimente dois exclusivos PlayStation altamente aclamados com este bundle de PS5 com ótimo custo-benefício. O Pack Console PlayStation®5 1TB – ASTRO BOT e Gran Turismo 7 libera ainda mais possibilidades de jogo, trazendo o vencedor do prêmio de Jogo do Ano de 2024, ASTRO BOT, e o simulador de direção definitivo, Gran Turismo 7, tudo por um preço incrível. Com o PS5, os jogadores obtêm tecnologia de jogo poderosa em um design de console compacto e elegante, conhecido como Design Slim. A experiência é elevada a um novo patamar, pois você pode dominar o poder de uma CPU e GPU personalizadas e o SSD com E/S integradas que redefinem as regras do que o console PlayStation® pode fazer. Maravilhe-se com os gráficos incríveis em 4K e experimente os recursos do novo PS5, que oferece uma geração inédita de jogos incríveis para PlayStation®.', 3500.00, 3905.07, 100, 2),

('Console Xbox 360 Slim, 4GB, 2 Controles , Preto + 1 Jogo', 'Você terá entretenimento garantido todos os dias. Sua tecnologia foi criada para colocar novos desafios para jogadores novatos e especialistas. Você não só poderá baixar os melhores videogames e navegar na web sem limites, mas graças à sua interconectividade global, também poderá competir online com seus amigos e pessoas de todo o mundo desfrutando de aventuras inesquecíveis. Graças às suas pequenas dimensões, o seu consumo de energia é baixo, o que o torna um produto económico e acessível.', 800.0, 1599, 20, 2),

('Caneleira de Muay Thai | Kickboxing - Top King "Kanok"', 'Alcance o máximo desempenho com a Caneleira Top King "Kanok"! Produzida artesanalmente na Tailândia, esta caneleira premium combina couro legítimo, espuma de alta densidade e um design elegante e exclusivo, oferecendo proteção superior, conforto incomparável e muito estilo. Escolha a sua e treine como um verdadeiro campeão!', 1000, 1289.90, 50, 3),

('Luvas de Muay Thai | Boxe - Twins Special "White & Black Dragon"', 'Com um exterior em couro genuíno e costuras cuidadosamente trabalhadas, as luvas Twins Special "White & Black Dragon" garantem resistência e suporte ideais para os punhos. O fechamento em velcro de alta qualidade mantém as mãos em posição neutra durante os golpes, enquanto a espuma multicamada protege contra impactos, tornando-as essenciais para sparring.', 1000, 1299.90, 20, 3),

('Ccm Taco de hóquei esquerdo Hsrc10p in rib', 'O taco Ribcor Trigger 10 Pro INT combina as mais recentes tecnologias para um desempenho aprimorado no gelo.

Sua construção em fibra de carbono de alta qualidade garante leveza e durabilidade, enquanto o ponto de chute baixo otimizado permite uma liberação rápida do disparo.

O design ergonômico do cabo e a lâmina avançada melhoram a sensibilidade ao disco e a precisão em passes e disparos.

Disponível em várias flexões e curvaturas para se adequar às diferentes preferências dos jogadores.

Este taco é ideal para jogadores avançados que buscam um taco confiável e responsivo para um jogo de alto nível', 1000, 1382.99, 10, 4),

('Protetor Bucal Preto Vollo Sports', 'Sabemos que os esportes oferecem inúmeros benefícios à saúde, assim como alguns deles também trazem impactos que necessitam de adaptações e cuidados! O protetor bucal pode ser utilizado em diversas lutas de artes marciais, como Boxe, Muay thai, MMA, Jiu-Jitsu, Kickboxing, entre outras. Foi pensando na saúde e na proteção contra possíveis danos físicos que o Protetor Bucal Vollo foi desenvolvido, tornando-se um equipamento tão necessário e indispensável para treinos ou competições! Com matéria-prima em EVA, o protetor bucal da Vollo possui maciez e mais flexibilidade para se ajustar em diferentes anatomias bucais, resultando em uma alta capacidade de absorção dos impactos e também possibilitando uma melhor dissipação da força ou energia recebida. Invista nesse cuidado e surpreenda o seu oponente! Principais Benefícios do Protetor Bucal Preto Vollo • Absorção de impactos • Precaução de danos na região bucal e ao redor • Livre concentração na performance • Mais segurança para a prática dos esportes • Equipamento anatômico Especificações Protetor Bucal Preto Vollo • Cor: Preto • Peso aproximado: 9 g • Composição: EVA • Dimensões aproximadas: 4,7 x 5,2 x 2cm', 10, 20, 100, 4)