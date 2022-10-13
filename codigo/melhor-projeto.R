# Meu primeiro programa em R no RStudio
# Este programa importa dados do MS sobre hospitalizações de Covid-19
# Origem:  https://dados.gov.br/dataset/registro-de-ocupacao-hospitalar

# Importando o arquivo para o R no dataframe df.leitocup
df.leitocup <- read.csv("./dados/esus-vepi.LeitoOcupacao_2022.csv")
# Visualizando os dados
View(df.leitocup)
# Selecionando os campos importantes
names(df.leitocup)
df_covid <- df.leitocup[c("dataNotificacao", "saidaConfirmadaObitos", "estado", "municipio" )]
df_covid <- subset.data.frame(df_covid, saidaConfirmadaObitos > 0)
View(df_covid)
# Transformando campo data
df_covid$dataNotificacao <- as.Date(df_covid$dataNotificacao)
