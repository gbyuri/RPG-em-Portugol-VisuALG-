algoritmo "nada"

var
   equipamento:vetor[1..4] de caracter
   iventario:vetor[1..10] de caracter
   item : caracter
   equipar : logico
   continuar: inteiro
   i:inteiro
   xequip: caracter
   y: inteiro

procedimento menu  //-----------------------------------------------------------
inicio
   escreval("1..equip")
   escreval("2..ivent")
   leia(continuar)
   escolha continuar
   caso 1
      equip
   caso 2
      ivent
   fimescolha
fimprocedimento
procedimento ivent //-----------------------------------------------------------
var
   x: inteiro
inicio
   x <- 1
   para x de 1 ate 10 faca
      escreval(x," ",iventario[x])
   fimpara
   escreval("Deseja equipar algum item <S/N>")
   leia(xequip)
   se (xequip ="s") ou (xequip ="S") entao
      escreval("Digite o número correspondente ao item")
      leia(y)
      se iventario[y] = "espada" entao
         equipamento[1] <- iventario[y]
         escreval(iventario[y],"foi equipado")
         iventario[y] <- ""
         i <- i-1
         xequip <- ""
         y <- 0
         ivent
      senao
         se iventario[y] = "elmo" entao
            equipamento[2] <-  iventario[y]
            escreval(iventario[y],"foi equipado")
            iventario[y] <- ""
            i <- i-1
            xequip <- ""
            y <- 0
            ivent
         senao
            se iventario[y] = "armadura" entao
               equipamento[3] <- iventario[y]
               escreval(iventario[y],"foi equipado")
               iventario[y] <- ""
               i <- i-1
               xequip <- ""
               y <- 0
               ivent
            senao
               se iventario[y] = "anel" entao
                  equipamento[4] <- iventario[y]
                  escreval(iventario[y],"foi equipado")
                  iventario[y] <- ""
                  i <- i-1
                  xequip <- ""
                  y <- 0
                  ivent
               fimse
            fimse
         fimse
      fimse
   fimse
   menu
fimprocedimento

procedimento equip //-----------------------------------------------------------
inicio

   aleatorio 1,4
   lista "item"
   leia(item)
   aleatorio off
   se item <> "" entao
      se i <= 10 entao
         iventario[i] <- item
         i <- i+1
         item <- ""
      senao
         escreval("Inventario cheio, item descartado")
         item <- ""
      fimse
   fimse
   menu
fimprocedimento
inicio
   i <- 1
   escreval("teste item")
   leia (continuar)
   menu








fimalgoritmo