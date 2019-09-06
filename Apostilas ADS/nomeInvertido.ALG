Algoritmo "aula. 15/05/2019"
// salva 3 nomes e imprime invertido
// By: Bruno Vais
Var
//declara um vetor de 10 endereços
nome: vetor [1..3] de caractere
//declara uma matriz de 10x20
letra: vetor [1..3, 1..20] de caractere
//contadores
x: inteiro
y: inteiro

Inicio
//inicia valor de y
y <- 1

{
*### Grava os nomes no vetor nome[] separa e salva as letras dos nomes na matriz letra[]###
*a função compr() (linha 32) retorna¹ o comprimento do vetor, Exemplo: O nome ozob contem
*4 letras, então digitando ozob no vetor, nome[1], e usando a função
*compr(nome[1]) ela retorna o valor inteiro 4, obs: funções podem ser chamadas de metodos
*em outras linguagens.
*copia() (linha 33) é outra função que copia caracteres de uma certa posição
*de um vetor, com os parâmetros² (posição, numero de caractere).
*no exemplo abaixo a matriz letras recebe na posição y ,x o
*caractere contido no endereço x do vetor nome.

*}
para y de 1 ate 3 passo 1 faca
     leia(nome[y])
     x <- 1
     enquanto x <= compr(nome[y])  faca
              letra[y, x] <- copia(nome[y], x, 1 )
              x <- x + 1
     fimenquanto
fimpara
escreval("############# nome invertido ############")
escreval("")
//inverte os nomes e imprime
y <- 1
enquanto y <= 3 faca
         x <- compr(nome[y]) //atribui o valor do comprimento do vetor ao contador x
         escreval(" ")
         enquanto x >= 1 faca
                  escreva(letra[y, x]) //para intender o funcionamento ler anexo 1
                  x <- x - 1
    fimenquanto
y <- y +1
fimenquanto


Fimalgoritmo

{
*retorna¹, Funções podem retornar valores, no caso do compr() retorna um valor inteiro.
*É importante saber o tipo de retorno de cada função, diferente da compr() a função copia()
*retorna tipo caractere, funções podem ser do tipo void, que não retornam nenhum valor.
*
*parâmetro², parâmetros são valores de entrada para funções/metodos com os quais o ela
*irá trabalhar, por exemplo uma função que soma dois numeros, a e b, recebe dois valores
*inteiros como parâmetro exemplo: soma(38, 4) os numeros 38 e 4 são parâmetros, essa
*função retorna 42.
*
*ANEXO 1 - as posições da matriz foram acessadas com loops aninhados, o valor de
*y (contador do loop externo) só muda após o loop interno terminar sua lista de tarefas,
*na linha 40 foi atribuido o valor 1 ao contador y, ele inicia o loop enquanto na linha 41.
*Na linha 42 foi atribuido o valor do comprimento do vetor nome[y] no contador x, caso o nome
* atribuido ao nome[y] seja dracula, o contador x recebera 7, que é o comprimento de nome[y],
* seguindo esse exemplo a consulta para escrita na linha 45, recebe os numeros y=1 e x = 7 "nome[1, 7]"
*
*ANEXO 2 - o basico para entender o exercício, fora o conhecimento elementar de logica
*visto nas aulas anteriores é como funciona funções, e matrizes, você pode encontrar
*uma lista de funções para manipulação de strings em https://www.apoioinformatica.inf.br/produtos/item/30-as-funcoes-do-visualg-versao-2-0
*no caso da minha solução usei uma matriz, as matrizes são como vetores aninhados
*são bem simples de entender se pensar como:
*vetor[1]
*   vetor[1,1]
*   vetor[1,2]
*   vetor[1,n]
*vetor[2]
*    vetor[2,1]
*    vetor[2,2]
*    vetor[2,n]
*para acessar o valor "gravado" na (linha 82) é só usar vetor[2,2]
}