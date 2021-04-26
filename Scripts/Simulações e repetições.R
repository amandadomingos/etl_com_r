#### simulações e repetições ####

# Configurar uma semente aleatória para a geração de dados
# utilizando a função addTaskCallback, deixamos a set.seed rodando atrás

tarefasemente <- addTaskCallback(function(...){set.seed(123); TRUE}) #atribui a tarefa à variável
tarefasemente #"chama" a tarefasementw

#Criando uma simulação da distribuição normal
distnormalsimula <- rnorm(100) #usa rnorm pra criar uma dist normal, indicando o total de n de casos

summary(distnormalsimula)


#Criando uma binomial simulada

distbinomialsimula <- rbinom(100, 1, 0.7) #usa rbinom pra criar uma dist binoimal, indicando o total de n de casos, tamanho e probabilidade

# Repetições
Classesimulação <- c(rep("Jovem", length(distbinomialsimula)/2),
                     rep("Jovem adulto", length(distbinomialsimula/2))) #vetor repedindo a classe "jovem" 15x e "jovem adulto" 15x

#Sequências: criar uma indexador pra mapear os casos
indexSimula <- seq(1, length(distbinomialsimula/2)) #vetor com index dos dados utilizando a função length p pegar o total do numero de casos

#Criando a função RemoveTask paraparar a tarefa que criamos lá em cima
removeTaskCallback(tarefasemente)
