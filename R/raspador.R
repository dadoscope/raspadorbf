#Faça download de um conjunto de tabelas do bolsa família referente a qualquer período a partir de janeiro de 2003 

base_address<- "http://transparencia.gov.br/download-de-dados/bolsa-familia-pagamentos/"

#Alterar as variáveis abaixo de acordo com o que se deseja
ano_ini<- 2013
ano_fim<- 2019
mes_ini<-1

ult_mes_disp<- 12


for (ano in ano_ini:ano_fim){
  
  if (ano == ano_fim) {mes_fim<-ult_mes_disp}
  
  for (mes in mes_ini:mes_fim){
    mes<- ifelse(mes>=10,as.character(mes),paste0('0',mes))

    arq_down<- paste0(base_address,ano,mes)
    
    download.file(arq_down,destfile = paste0(ano,mes,'_BF','.zip'), mode='wb')
      
  }
  
}
