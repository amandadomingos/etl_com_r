#### Aula 2 - Tipos de objeto ####

#Tipos de objeto

#Vetor: é o formato mais básico
vetor1 <- c(1,2,3,4,5,6)

is.vector(vetor1)
typeof(vetor1)
class(vetor1)
str(vetor1)
length(vetor1)

# array: ndimensional

array1 <- array(c(c('Amanda', 'João', 'Ana', 'Tomé'), 15:26),
           dim = c(2,2,2)) #cria um arranjo usando as funções array e concatenar
is.array(array1)
typeof(array1)
class(array1)
str(array1)
length(array1)

#Matriz
matriz1 <- matrix(vetor1, nrow = 2)
is.matrix(matriz1)
is.array(matriz1)
typeof(matriz1)
class(matriz1)
str(matriz1)
length(matriz1)

#Lista

regcarros <- lm(mpg~., mtcars) #criação de um modelo de reg
is.list(regcarros)
is.array(regcarros)
typeof(regcarros)
class(regcarros)
str(regcarros)
length(regcarros)

#Dataframe - quadro de dados
iris #nativo do R
is.data.frame(iris)
typeof(iris)
class(iris)
str(iris)
length(iris)

# Criando um dataframe próprio

#primeiro, adicionar pacote eeptools
library(eeptools)

# Criando vetores com nomes
nome <- c('Amanda', 'Virginia', 'Palloma', 'Manuela',
          'Matheus', 'Marcus')

# Criando vetores com data de nascimento
datanasc <- as.Date(c('1994-07-29', '1990-07-04', '1989-02-21',
                      '1990-09-09','1994-12-18', '1995-03-02'))

#vetor com idades
idade <- round(age_calc(datanasc, units = "years")) #função round pra arredondar

#Criando dataframe com base nos vetores
listaAlunos <- data.frame(
  nomeAluno = nome,
  nascimento = datanasc,
  idadeAluno = idade)
View(listaAlunos)
