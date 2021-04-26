#### Limpando a staging area e analisando o uso de memória ####

#Analisando todos os objetos pra ver quanto cada um está ocupando
ls() # lista todos os objetos no R

# Criando um "for" pra ver a influencia de cada objeto na ocupação da staging area
for (itm in ls()) { 
  print(formatC(c(itm, object.size(get(itm))), 
                format="d", 
                width=30), 
        quote=F)
}

ls() #listando novamente todos eles

#Removendo os objetos mais pesados, pra limpar a SA.
gc() # uso explícito do garbage collector
rm(list = c('acidentesrec2020raw', 'acidentesrec2021raw', 'acidentesrec2019raw'))

# Outra opção: deletando todos os elementos: rm(list = ls())
# Mais uma opção: deletando todos os elementos, menos os listados: rm(list=(ls()[ls()!="sinistrosRecifeRaw"]))

#Salvando em RDS
saveRDS(acidentesrec, "Data/Processing data/acidentesrec.rds")

#salvando em CSV
write.csv2(acidentesrec, "Data/Processing data/acidentesrec.csv")
