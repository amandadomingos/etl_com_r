#### Realizando ETL com dados da PCR ####

#Baixando dados de acidentes de trânsito da PCR
acidentesrec2020raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/fc1c8460-0406-4fff-b51a-e79205d1f1ab/download/acidentes_2020-novo.csv', sep = ';', encoding = 'UTF-8')

acidentesrec2021raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/2caa8f41-ccd9-4ea5-906d-f66017d6e107/download/acidentes_2021-jan.csv', sep = ';', encoding = 'UTF-8')

#mergindo as bases de dados com rbind
acidesntesrec <- rbind(acidentesrec2020raw, acidentesrec2021raw)

#analisando as estruturas 