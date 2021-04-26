#### Realizando ETL com dados da PCR ####

#Baixando dados de acidentes de trânsito da PCR
acidentesrec2019raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/fc1c8460-0406-4fff-b51a-e79205d1f1ab/download/acidentes_2019-novo.csv', sep = ';', encoding = 'UTF-8')

acidentesrec2020raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/fc1c8460-0406-4fff-b51a-e79205d1f1ab/download/acidentes_2020-novo.csv', sep = ';', encoding = 'UTF-8')

acidentesrec2021raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/2caa8f41-ccd9-4ea5-906d-f66017d6e107/download/acidentes_2021-jan.csv', sep = ';', encoding = 'UTF-8')

#mergindo as bases de dados com rbind
acidentesrec <- rbind(acidentesrec2020raw, acidentesrec2021raw)
acidentesrec <- rbind(acidentesrec, acidentesrec2019raw)

#analisando as estruturas dos dados
str(acidesntesrec)

#Ajustando o formato de data 
acidentesrec$data <- as.Date(acidentesrec$data, format = "%Y-%m-%d")

#Modifica a natureza do acidente de string pra factor
acidentesrec$natureza_acidente <- as.factor(acidentesrec$natureza_acidente)

#Criando função para substituir NA por 0
NAzero <- function(x){
  x <- ifelse(is.na(x), 0, x)
}

#apliando a função de NAzero para todas as colunas de contagem
acidentesrec[, 15:25] <- sapply(acidentesrec[, 15:25], NAzero)

View(acidentesrec)

#Salvando em RDS
saveRDS(acidentesrec, "Data/Processing data/acidentesrec.rds")

#salvando em CSV
write.csv2(acidentesrec, "Data/Processing data/acidentesrec.csv")
