Algoritmo "Cadastro de Livros"
// Autor(a)    : Gabriel Correia
// Data atual  : 07/12/21

tipo
    cad_livros = registro
               nomeLivro: caracter
               nomeAutor: caracter
               nomeEditora: caracter
               ano: inteiro
    fimregistro
/////////////////MENU//////////////////////
procedimento Menu
var
OP: inteiro

inicio
      escreval ("******************")
      escreval ("* MENU PRINCIPAL *")
      escreval ("******************")
      escreval ("1. Cadastrar livros")
      escreval ("2. Listar livros")
      escreval ("3. Sair")
      leia (OP)
      escreval
      escolha OP
              caso 1
                   CadastrarLivros
              caso 2
                   ListarLivros
              caso 3
                   interrompa
      fimescolha
fimprocedimento

////////////////////CADASTRAR LIVROS/////////////////////
procedimento cadastrarLivros
var
i: inteiro

inicio
      escreva ("Digite quantos livros deseja cadastrar: ")
      leia (qntdLivros)
      escreval

      para i de 1 ate qntdLivros faca
         escreval ("*******************")
         escreval ("* CADASTRO Nº",i,"*")
         escreval ("*******************")
         escreval
         escreva ("Nome do livro: ")
         leia(livros[i].nomeLivro)
         escreva ("Nome do autor: ")
         leia(livros[i].nomeAutor)
         escreva ("Editora: ")
         leia(livros[i].nomeEditora)
         escreva ("Ano de lançamento: ")
         leia(livros[i].ano)
         escreval
      fimpara
      
      Menu
fimprocedimento

/////////////////LISTAR LIVROS///////////////////
procedimento listarLivros
var
i: inteiro

inicio
      escreval ("********************")
      escreval ("*LIVROS CADASTRADOS*")
      escreval ("********************")

      para i de 1 ate qntdLivros faca
           escreval ("Nome do livro:",livros[i].nomeLivro)
           escreval ("Nome do autor:",livros[i].nomeAutor)
           escreval ("Editora:",livros[i].nomeEditora)
           escreval ("Ano de lançamento:",livros[i].ano)
           escreval
      fimpara

Menu

fimprocedimento

/////////////////CORPO PRINCIPAL//////////////
Var
// Seção de Declarações das variáveis 
livros: vetor [1..20] de cad_livros
qntdLivros: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Menu

Fimalgoritmo