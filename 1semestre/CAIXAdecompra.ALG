Algoritmo "Caixa"
// Disciplina   : Projeto Integrador 1-B
// Professor   : Lorena Piza
// Descri��o   : Sistema de Caixa - Loja material de Constru��o
// Autor(a)    : Matheus H. Dutra Rangel
// Data atual  : 23/06/2021
Var
// Se��o de Declara��es das vari�veis 
vp: vetor[1..99] de real         //vetor valor do produto
np, parc: Inteiro
opc: caracter
c: inteiro
soma, desc, aum: real
Procedimento Topo()
inicio
Limpatela
Escreval ("====== Construgol Materiais de Contru��o ====== ")
Escreval (" ")
Escreval ("Cotrole de Caixa")
Escreval (" ")
Escreval ("1 - Registrar Produto")
Escreval ("2 - Valor Total da Venda")
Escreval ("3 - Pagamento � Vista")
Escreval ("4 - Pagamento a Prazo")
Escreval ("5 - Valor Total a ser pago")
Escreval ("6 - Sair")
Escreval (" ")
FimProcedimento
Procedimento Erro()
inicio
limpatela
Escreval("N�o foi realizada nenhuma compra!")
fimProcedimento
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
Topo()
 Escreval("Selecione uma op��o!")
 Leia(opc)
   escolha opc
   caso "1"
     LimpaTela
       Escreval("quantos produtos foram comprados?")
       Leia(np)
       para c <- 1 ate np faca
         Escreval("Entre com os valores dos produtos!")
         Leia(vp[c])
         soma <- soma + vp[c]
       Fimpara
     Escreval("Total: ", soma)
   //fimescolha
 Escreval(" ")
 Escreval("Selecione a forma de pagamento! ")
 Escreval("Digite 3 para pagamento � vista ou 4 para pagamento a prazo")
 Leia(opc)
  escolha opc
   caso "3"
     Limpatela
     Escreval("SELECIONADO FORMA DE PAGAMENTO � VISTA")
     Escreval("O valor total de", soma, " Reais ter� um desconto de 15%!!")
     desc <- soma * 0.85
     Escreva("Novo valor com Desconto:", desc)

   caso "4"
     Limpatela
     Escreval("SELECIONADO FORMA DE PAGAMENTO A PRAZO")
     escreval(" ")
     Escreva("Escolha a quantidade de parcelas!, Dividimos em 6x sem Juros!")
     leia(parc)
     escreval(parc,"x Escolhida")
     Escreval(" ")
     escreval("parcelas de", soma / parc, " ser�o geradas")
     escreval("O valor total de", soma, " Reais ter� um aumento em 3%!!")
     aum <- soma * 1.03
     escreval("Novo valor com aumento:", aum)
  fimescolha
  caso "2"
    erro()
  caso "3"
    erro()
  caso "4"
    erro()
  caso "5"
    erro()
  caso "6"
    escreval("obrigado pela preferencia")
  fimescolha
Fimalgoritmo