programa
{
	inclua biblioteca Tipos --> t
	
	
inteiro q_livros, ini, fim, q[2], i, q_cats, q_alunos, cod, codigo, opcao, c, l, quant_livros = 46, quant_livros_emprestados

cadeia liv, cat, nome, volta, livros[10], aluno[20], name, date, namebook, entrega, data_hoje

caracter month, mes_hoje
	
	cadeia categorias[8] = {"Elétrica", "Tecnologia da Informação", "Matemática", "Mecânica", "Automotiva", "Usinagem", "Hidraulica", "Literatura"}
	
	//Bryan (cadeia tabela[47][7]

cadeia tabela[47][7] = {{"ID", "       CATEGORIA     ", "CÓD. DA CATEGORIA", "                       SUBCATEGORIA                       ", "                           LIVRO                            ", "CÓD. LIVRO", "              AUTOR                      |"},
{"1 ", "Elétrica             ", "      621.3.049  ", "Circuitos Elétricos                                       ", "Análise de circuitos                                        ", "    200   ", "Robert L. Boylestand                     |"},
{"2 ", "Elétrica             ", "      621.3      ", "Engenharia Elétrica                                       ", "Materiais elétricos                                         ", "    130   ", "Walfredo Schmidt                         |"},
{"3 ", "Elétrica             ", "      621.31     ", "Mediação Elétrica                                         ", "Eletromecânica                                              ", "    67    ", "Frank D. Petruzella                      |"},
{"4 ", "Elétrica             ", "      621.43     ", "Motores de Combustão Interna                              ", "Eletrônica Digital                                          ", "    15    ", "James W. Bignell e Robert Donovan        |"},
{"5 ", "Elétrica             ", "      621.51     ", "Compressores                                              ", "Bombas Industriais                                          ", "    230   ", "Falco Ezequiel                           |"},
{"6 ", "Elétrica             ", "      621.38     ", "Dispositivos Eletrônicos                                  ", "Dicionário de Eletrônica                                    ", "    122   ", "Giacomo Gardini e Norberto de Paula Lima |"},
{"7 ", "Elétrica             ", "      621.316.17 ", "Inst. Elétricas em Edifícios e Vias                       ", "Instalações Elétricas                                       ", "    92    ", "Giacomo Gardini e Norberto de Paula Lima |"},
{"8 ", "Matemát.             ", "      51         ", "Matemática                                                ", "Pré-cálculo                                                 ", "    96    ", "Francisco Magalhaes Gomes                |"},
{"9 ", "Matemát.             ", "      53         ", "Física                                                    ", "Fundamentos da Física                                       ", "    13    ", "Haliday Walker                           |"},
{"10", "Matemát.             ", "      54         ", "Química                                                   ", "Química Ambiental                                           ", "    442   ", "Corlin Baird                             |"},
{"11", "Matemát.             ", "      62.7       ", "Mecânica (Manutenção)                                     ", "Equipamentos Mecânicos                                      ", "    127   ", "Henry T. Brown                           |"},
{"12", "Matemát.             ", "      502        ", "Meio Ambiente                                             ", "O livro da ciência                                          ", "    317   ", "Globo Livros                             |"},
{"13", "Matemát.             ", "      551        ", "Geologia                                                  ", "Fundamentos de Geologia                                     ", "    898   ", "Reed Wicander/James S. Monroe            |"},
{"14", "Matemát.             ", "      620.1      ", "Mecânica dos materiais                                    ", "Tecnologia Mecânica                                         ", "    439   ", "Givanildo Alves Dos Santos               |"},
{"15", "Matemát.             ", "      621.       ", "Engenharia Mecânica                                       ", "Corrosão e seu controle                                     ", "    692   ", "Lalgudi V. Ramanathan                    |"},
{"16", "Matemát.             ", "      621.1      ", "Máquinas Térmicas                                         ", "Máquinas de fluxo                                           ", "    135   ", "Zulcy de Souza                           |"},
{"17", "Matemát.             ", "      573        ", "Biologia                                                  ", "O livro da Ecologia                                         ", "    621   ", "Globo Livros                             |"},
{"18", "Matemát.             ", "      657        ", "Contabilidade                                             ", "Gestão da Inovação                                          ", "    14    ", "John Bessant                             |"},
{"19", "Matemát.             ", "      658.       ", "Empreendedorismo                                          ", "Assistente Administrativo                                   ", "    16    ", "Jose Antôniode Mattos                    |"},
{"20", "Matemát.             ", "      53         ", "Física                                                    ", "Princípios de Física                                        ", "    17    ", "John W. Jewett,Jr.                       |"},
{"21", "Mecânica             ", "      620.1      ", "Mecânica dos Materiais                                    ", "Intro. a Mecânica dos Sólidos                               ", "    145   ", "Haliday Walker                           |"},
{"22", "Mecânica             ", "      621        ", "Engenharia Mecânica                                       ", "Corrosão                                                    ", "    167   ", "Lalgudi V.                               |"},
{"23", "Mecânica             ", "      621        ", "Engenharia Mecânica                                       ", "Ensaios Mecânicos                                           ", "    190   ", "Souza                                    |"},
{"24", "Mecânica             ", "      621        ", "Engenharia Mecânica                                       ", "Tolerância, ajustes, desvios e análise de dimensoes         ", "    186   ", "Oswaldo Luiz Agostinho                   |"},
{"25", "Mecânica             ", "      621.7      ", "Tecnologia Mecânica                                       ", "Biocorrosão                                                 ", "    181   ", "Videla                                   |"},
{"26", "TI                   ", "      001.8      ", "Metodologia                                               ", "Estrutura de dados fundamentais                             ", "    457   ", "Silvio Do Lago Pereira                   |"},
{"27", "TI                   ", "      004        ", "Informática                                               ", "Metodologia científica                                      ", "    563   ", "Francisco Tarciso Leite                  |"},
{"28", "TI                   ", "      004.056    ", "Qualid. dos sistemas e do software                        ", "Codigo Seguro                                               ", "    758   ", "Simon Singh                              |"},
{"29", "TI                   ", "      004.2      ", "Arquitetura dos Computadores                              ", "Org. estruturada de Computadores                            ", "    48    ", "Andrew S. Tanenbaum                      |"},
{"30", "TI                   ", "      004.3      ", "Hardware                                                  ", "Lógica e Design de Programação                              ", "    755   ", "Joyce Farrell                            |"},
{"31", "TI                   ", "      004.43     ", "Linguagem de Programação                                  ", "Compilados                                                  ", "    556   ", "Robert W. Sebesta                        |"},
{"32", "TI                   ", "      004.451    ", "Interface                                                 ", "Sistemas Operacionais                                       ", "    444   ", "Deitel Deitel Choffnes                   |"},
{"33", "TI                   ", "      004.7      ", "Redes de Computadores                                     ", "Sistemas Moderados De Comunicação Wireless                  ", "    248   ", "Simon Haykin/Michael Moher               |"},
{"34", "TI                   ", "      025.4      ", "Bibliotecas                                               ", "Auxiliar de Biblioteca                                      ", "    921   ", "Divina Aparecida da Silva                |"},
{"35", "TI                   ", "      159.9      ", "Psicologia                                                ", "Alcoolismo                                                  ", "    788   ", "Ronaldo Laranjeira/Ilana Pinsky          |"},
{"36", "TI                   ", "      331.47     ", "Segur. e Higiene do Trabalho                              ", "Ergonomia Projeto e Produção                                ", "    181   ", "Iliro Lida                               |"},
{"37", "TI                   ", "      338        ", "Economia                                                  ", "Economia                                                    ", "    374   ", "Glovo Livros                             |"},
{"38", "TI                   ", "      621.       ", "Engenharia Mecânica                                       ", "Energias Renováveis                                         ", "    123   ", "Rodnei Vecchia                           |"},
{"39", "TI                   ", "      621.1      ", "Máquinas Térmicas                                         ", "Instr. Aplicada ao Controle                                 ", "    144   ", "Bega,E.A                                 |"},
{"40", "Automotiva           ", "      629.331    ", "Preparaçao de superficie para pintura automotiva          ", "Instalador de som e acessorios eletroeletronicos automotivos", "    561   ", "Senai-Sp                                 |"},
{"41", "Automotiva           ", "      629.02     ", "Preparaçao de tintas para pintura automotiva              ", "Tecnologia da repintura automotiva                          ", "    927   ", "Departamento Regional                    |"},
{"42", "Usinagem             ", "      621.9      ", "Usinagem                                                  ", "Operaçoes de maquinas convencionais                         ", "    167   ", "Senai-Sp                                 |"},
{"43", "Hidraulica           ", "      626        ", "Hidraulica                                                ", "Introduçao a hidraulica                                     ", "    349   ", "John Gribbin                             |"},
{"44", "Hidraulica           ", "      621.8      ", "Elementos de maquinas                                     ", "Dinamica de sistemas mecanico                               ", "    205   ", "Ilmar Santos                             |"},
{"45", "Literatura           ", "      xxx        ", "Literatura estrangueira                                   ", "Rei leão                                                    ", "    340   ", "Elizabeth Rudnick                        |"},
{"46", "Literatura           ", "      xxx        ", "Literatura brasileira                                     ", "Vidas secas                                                 ", "    776   ", "Graciliano Ramos                         |"}}
	
funcao inicio(){ //David

cadeia user = "aluno", senha = "aluno", admin = "admin", sen = "1234", login, senhas

aluno[0] = "david"
aluno[1] = "heitor"
aluno[2] = "bryan"
aluno[3] = "ricardo"

escreva("Login: ")
leia(login)

escreva("Senha: ")
leia(senhas)

se(login == user e senhas == senha){
menuUsuario()
}
senao se(login == admin e senhas == sen){
menuAdmin()
}
senao{
escreva("\nUsuário ou Senha inválidos\n")
}
}	

funcao menuUsuario(){ //David e Bryan


limpa()

escreva("(1) Consultar Tabela\n")
escreva("(2) Pesquisar Código\n")
escreva("(3) Pesquisar Categoria\n")
escreva("(4) Voltar ao menu inicial\n")

escreva("\nInsira a opção que deseja acessar: ")
leia(opcao)

limpa()

escolha(opcao){

caso 1:
Consultar()
voltaUsuario()
pare
caso 2:
pesquisarCod()
voltaUsuario()
pare
caso 3:
pesquisarCat()
voltaUsuario()
pare
caso 4:
voltaMenuInicial()
pare

}
}

funcao menuAdmin(){ //David e Bryan


limpa()

escreva("(1) Consultar Livros\n")
escreva("(2) Empréstimo\n")
escreva("(3) Pesquisar Código\n")
escreva("(4) Pesquisar Categoria\n")
escreva("(5) Adicionar Livro\n")
escreva("(6) Relatório\n")
escreva("(7) Relatório de Empréstimos\n")
escreva("(8) Relatório de Atrasos\n")
escreva("(9) Alunos\n")
escreva("(10) Cadastrar Aluno\n")
escreva("(11) Voltar menu inicial")

escreva("\nInsira a opção que deseja acessar: ")
leia(opcao)

limpa()

escolha(opcao){

caso 1:
Consultar()
voltaAdmin()
pare

caso 2:
emprestimos ()
voltaAdmin()
pare
caso 3:
pesquisarCod()
voltaAdmin()
pare
caso 4:
pesquisarCat()
voltaAdmin()
pare
caso 5:
novoLivro()
voltaAdmin()
pare
caso 6:
relatorio()
voltaAdmin()
pare
caso 7:
relatarEmprestimos()
voltaAdmin()
pare
caso 8:
atrasos()
voltaAdmin()
pare
caso 9:
alunos()
voltaAdmin()
pare
caso 10:
cadastrarAluno()
voltaAdmin()
pare
caso 11:
voltaMenuInicial()
pare

caso contrario:
escreva("Opção Inválida!!\n\n")
pare
}
}

funcao Consultar(){ //David
para(i = 0; i < 47; i++){
escreva("| ", tabela[i][0], " | ", tabela[i][1]," | ", tabela[i][2]," | ", tabela[i][3], " | ", tabela[i][4], " | ", tabela[i][5], " | ", tabela[i][6],"\n")
}
}

funcao emprestimos(){ //Heitor e Bryan
	
inteiro  option, diaentrega

escreva ("--- EMPRÉSTIMOS ---\n")
escreva("Quantos livros deseja pegar emprestado?\n")
leia(quant_livros_emprestados)

limpa()

escreva ("1) Elétrica \n")
escreva ("2) Tecnologia da Informação \n")
escreva ("3) Matemática \n")
escreva ("4) Mecânica \n")
escreva("5) Automotiva\n")
escreva("6) Usinagem\n")
escreva("7) Hidraulica\n")
escreva("8) Literatura\n")

escreva ("Insira a opção que deseja: ")
leia (option)

escolha (option){
caso 1:

limpa()

escreva ("---Elétrica---\n")
escreva ("Informe o seu nome: ")
leia (name)
escreva ("Informe o dia que está pegando o livro: ")
leia (date)
escreva ("Informe o mês que está pegando o livro: ")
leia (month)
escreva ("Informe o nome do livro de Elétrica que você escolheu: ")
leia (namebook)
escreva("Qual o dia que pretende entregar o livro?\n")
leia(diaentrega)


limpa()

escreva ("\nO aluno ",name," pegou o livro '",namebook,"' de ' Elétrica ' no dia ",date, "/",month,"/2023 e devolverá no dia: ", diaentrega)
pare

caso 2:

limpa()

escreva ("---Tecnologia da Informação---\n")
escreva ("Informe o seu nome: ")
leia (name)
escreva ("Informe o dia que está pegando o livro: ")
leia (date)
escreva ("Informe o mês que está pegando o livro: ")
leia (month)
escreva ("Informe o nome do livro de Tenologia da Informação que você escolheu: ")
leia (namebook)
escreva("Qual o dia que pretende entregar o livro?\n")
leia(diaentrega)

limpa()

escreva ("\nO aluno ",name," pegou o livro '",namebook,"' de ' Tecnologia da Informação ' no dia ",date, "/",month,"/2023 e devolverá no dia: ", diaentrega)
pare

caso 3:

limpa()

escreva ("---Matemática---\n")
escreva ("Informe o seu nome: ")
leia (name)
escreva ("Informe o dia que está pegando o livro: ")
leia (date)
escreva ("Informe o mês que está pegando o livro: ")
leia (month)
escreva ("Informe o nome do livro de Matemática que você escolheu: ")
leia (namebook)
escreva("Qual o dia que pretende entregar o livro?\n")
leia(diaentrega)


limpa()

escreva ("\nO aluno ",name," pegou o livro '",namebook," de ' Matemática ' no dia ",date, "/",month,"/2023 e devolverá no dia: ", diaentrega)
pare

caso 4:

limpa()

escreva ("---Mecânica---\n")
escreva ("Informe o seu nome: ")
leia (name)
escreva ("Informe o dia que está pegando o livro: ")
leia (date)
escreva ("Informe o mês que está pegando o livro: ")
leia (month)
escreva ("Informe o nome do livro de Mecânica que você escolheu: ")
leia (namebook)
escreva("Qual o dia que pretende entregar o livro?\n")
leia(diaentrega)

limpa()

escreva ("\nO aluno ",name," pegou o livro '",namebook,"' de ' Elétrica ' no dia ",date, "/",month,"/2023 e devolverá no dia: ", diaentrega)
pare

caso 5:

limpa()

escreva ("---Automotiva---\n")
escreva ("Informe o seu nome: ")
leia (name)
escreva ("Informe o dia que está pegando o livro: ")
leia (date)
escreva ("Informe o mês que está pegando o livro: ")
leia (month)
escreva ("Informe o nome do livro de Elétrica que você escolheu: ")
leia (namebook)
escreva("Qual o dia que pretende entregar o livro?\n")
leia(diaentrega)


limpa()

escreva ("\nO aluno ",name," pegou o livro '",namebook,"' de ' Elétrica ' no dia ",date, "/",month,"/2023 e devolverá no dia: ", diaentrega)
pare

caso 6:

limpa()

escreva ("---Usinagem---\n")
escreva ("Informe o seu nome: ")
leia (name)
escreva ("Informe o dia que está pegando o livro: ")
leia (date)
escreva ("Informe o mês que está pegando o livro: ")
leia (month)
escreva ("Informe o nome do livro de Elétrica que você escolheu: ")
leia (namebook)
escreva("Qual o dia que pretende entregar o livro?\n")
leia(diaentrega)

limpa()

escreva ("\nO aluno ",name," pegou o livro '",namebook,"' de ' Elétrica ' no dia ",date, "/",month,"/2023 e devolverá no dia: ", diaentrega)
pare

caso 7:

limpa()

escreva ("---Hidraulica---\n")
escreva ("Informe o seu nome: ")
leia (name)
escreva ("Informe o dia que está pegando o livro: ")
leia (date)
escreva ("Informe o mês que está pegando o livro: ")
leia (month)
escreva ("Informe o nome do livro de Elétrica que você escolheu: ")
leia (namebook)
escreva("Qual o dia que pretende entregar o livro?\n")
leia(diaentrega)

limpa()

escreva ("\nO aluno ",name," pegou o livro '",namebook,"' de ' Elétrica ' no dia ",date, "/",month,"/2023 e devolverá no dia: ", diaentrega)
pare

caso 8:

limpa()

escreva ("---Literatura---\n")
escreva ("Informe o seu nome: ")
leia (name)
escreva ("Informe o dia que está pegando o livro: ")
leia (date)
escreva ("Informe o mês que está pegando o livro: ")
leia (month)
escreva ("Informe o nome do livro de Elétrica que você escolheu: ")
leia (namebook)
escreva("Qual o dia que pretende entregar o livro?\n")
leia(diaentrega)


limpa()

escreva ("\nO aluno ",name," pegou o livro '",namebook,"' de ' Mecânica ' no dia ",date, "/",month,"/2023 e devolverá no dia: ", diaentrega)
pare
}
}
		
funcao pesquisarCod(){ //David
escreva("\tCódigos\n\n")
para(i = 1; i < 5; i++){
escreva(tabela[i][5], " - ", tabela[i][4], "\n")}

escreva("\n\nInsira o código que deseja pesquisar: ")
leia(cod)

limpa()

para(i = 1; i < 5; i++){
codigo = t.cadeia_para_real(tabela[i][5])
se(cod == codigo){
escreva("| ", tabela[i][0], " | ", tabela[i][1]," | ", tabela[i][2]," | ", tabela[i][3], " | ", tabela[i][4], " | ", tabela[i][5], " | ", tabela[i][6],"\n")}
}
}

funcao pesquisarCat(){ //Heitor e Bryan

escreva("\tCategorias\n\n")

para(i = 0; i < 8; i++){
escreva(i + 1, " - ", categorias[i], "\n")
}

escreva("\n\nInsira a categoria que deseja pesquisar: ")
leia(opcao)
limpa()
escolha(opcao){

caso 1:
para( i = 1; i <= 7; i++){
escreva("| ", tabela[i][0], " | ", tabela[i][1]," | ", tabela[i][2]," | ", tabela[i][3], " | ", tabela[i][4], " | ", tabela[i][5], " | ", tabela[i][6],"\n")}
pare

caso 2:
para( i = 8; i <= 20; i++){
escreva("| ", tabela[i][0], " | ", tabela[i][1]," | ", tabela[i][2]," | ", tabela[i][3], " | ", tabela[i][4], " | ", tabela[i][5], " | ", tabela[i][6],"\n")}
pare

caso 3:
para( i = 21; i <= 25; i++){
escreva("| ", tabela[i][0], " | ", tabela[i][1]," | ", tabela[i][2]," | ", tabela[i][3], " | ", tabela[i][4], " | ", tabela[i][5], " | ", tabela[i][6],"\n")}
pare

caso 4:
para( i = 26; i <= 39; i++){
escreva("| ", tabela[i][0], " | ", tabela[i][1]," | ", tabela[i][2]," | ", tabela[i][3], " | ", tabela[i][4], " | ", tabela[i][5], " | ", tabela[i][6],"\n")}
pare

caso 5:
para( i = 40; i <= 41; i++){
escreva("| ", tabela[i][0], " | ", tabela[i][1]," | ", tabela[i][2]," | ", tabela[i][3], " | ", tabela[i][4], " | ", tabela[i][5], " | ", tabela[i][6],"\n")}
pare

caso 6:
para( i = 42; i <= 42; i++){
escreva("| ", tabela[i][0], " | ", tabela[i][1]," | ", tabela[i][2]," | ", tabela[i][3], " | ", tabela[i][4], " | ", tabela[i][5], " | ", tabela[i][6],"\n")}
pare

caso 7:
para( i = 43; i <= 44; i++){
escreva("| ", tabela[i][0], " | ", tabela[i][1]," | ", tabela[i][2]," | ", tabela[i][3], " | ", tabela[i][4], " | ", tabela[i][5], " | ", tabela[i][6],"\n")}
pare

caso 8:
para( i = 45; i <= 46; i++){
escreva("| ", tabela[i][0], " | ", tabela[i][1]," | ", tabela[i][2]," | ", tabela[i][3], " | ", tabela[i][4], " | ", tabela[i][5], " | ", tabela[i][6],"\n")}
pare
}

}

funcao novoLivro(){ //David

escreva("Insira quantidade de livros: ")
leia(q_livros)

limpa()

escreva("----CADASTRO DE LIVROS----\n\n")

ini = q[0] + 1
fim = q[0] + q_livros

para(i = ini; i <= fim; i++){

escreva("\nLivro: ")
leia(liv)

escreva("Categoria: ")
leia(cat)

livros[i] = liv
categorias[i] = cat
}

limpa()

escreva("\n\tLivros Cadastrados:\n")

para(i = 0; i <= fim; i++){
se (livros[i] != ""){
escreva("\n",i, " - Livro ", livros[i], " cadastrado na categoria ", categorias[i],"!\n")
q[0] = i
}

senao{
escreva("")}
}
}

funcao relatorio(){ //Bryan

	escreva("----------Relatorio Geral----------")
	escreva("\n")
	escreva("\nA quantidade de livros na estante é de: ", quant_livros - quant_livros_emprestados)
	escreva("\n")
	escreva("A quantidade de livors emprestados é de: ", quant_livros_emprestados)
	escreva("\n")
	escreva("Categorias de livros cadastrados: Eletrica, matematica, mecanica, TI, automotiva, usinagem, hidraulica e literatura")
}

funcao relatarEmprestimos(){ //Bryan
	
	escreva("----Relatorio----\n")
	escreva("\n")
	
	se(namebook == "")
	{
		escreva("Nao ha emprestimos!")

		voltaAdmin()
	}
	senao{
		escreva("O aluno ",name, " pegou o livro ",namebook, " emprestado!\n")
	}
}
	
funcao atrasos(){ //Clebio

escreva("----------Relatorio de atraso----------")
escreva("\n")
escreva("Informe a data do dia de hoje:\n")
leia(data_hoje)
escreva("Informe a data do mes que estamos:\n")
leia(mes_hoje)
se(mes_hoje<= month){
  escreva("Livro dentro do prazo")
}
senao{
	escreva("Livro atrasado")
}
}

funcao alunos(){ //David
escreva("\tAlunos\n\n")
para(i = 0; i < 20; i++){
se (aluno[i] != ""){
escreva(i + 1, " - ", aluno[i], "\n")}
}
}

funcao cadastrarAluno(){ //David

escreva("Insira quantidade de alunos: ")
leia(q_alunos)

limpa()

escreva("----CADASTRO DE ALUNOS----\n\n")

ini = q[0] + 4
fim = ini + q_alunos

para(i = ini; i < fim; i++){

escreva("\nAluno: ")
leia(nome)

aluno[i] = nome
}

limpa()

escreva("\n\tAlunos Cadastrados:\n")

para(i = 4; i < fim; i++){
se (aluno[i] != ""){
escreva("\nAluno ", aluno[i], " cadastrado com sucesso!\n")
q[0] = i
}

senao{
escreva("")}
}
}

funcao voltaUsuario(){ //David

escreva("\nDeseja voltar ao menu (s ou n)? ")
leia(volta)

se(volta == "s" ou volta == "S"){
limpa()
menuUsuario()
}
senao{
limpa()
escreva("Programa Finalizado!!\n")
}
}

funcao voltaAdmin(){ //David

escreva("\nDeseja voltar ao menu (s ou n)? ")
leia(volta)

se(volta == "s" ou volta == "S"){
limpa()
menuAdmin()
}
senao{
limpa()
escreva("Programa Finalizado!!\n")
}
}

funcao voltaMenuInicial(){ //Bryan
	inicio()
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 23594; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */