#-- Revisão: Analise-Precos-Diamantes

#Baixe o arquivo: P2-Mispriced-Diamonds.csv
#https://www.superdatascience.com/pages/rcourse
#https://rpubs.com/Rachana_SV/1120075
#https://drive.google.com/file/d/1aJkGBZtrtKpsKaKbgNhDeR9eReUd0xPX/view?usp=drive_link

# rm(list =ls ()) - apaga o Enviroment

# Verificar o diretótio de trabalho atual
getwd()

# Definir o diretório de trabalho
# Aqui é a unidade do usuario do projeto, então você instala o Google Drive para computador, 
# e o Google Drive aparece no Explorador de Arquivos como uma unidade.
setwd("G:/Meu Drive/R/Analise-Preco-Diamantes/Pasta-Arquivo-Projeto")

# 1- Instalar o pacote que permite "R" ACESSAR O GOOGLE DRIVE
# Instalar apenas se não estiver instalado
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2", dependencies = FALSE)
}
library(ggplot2)

if (!requireNamespace("data.table", quietly = TRUE)) {
  install.packages("data.table", dependencies = FALSE)
}
library(data.table)

if (!requireNamespace("googledrive", quietly = TRUE)) {
  install.packages("googledrive", dependencies = FALSE)
}
library(googledrive)

# 2.1-Autenticação (Só precisa rodar apenas na primeira vez (ou quando trocar de conta/escopo). O token fica salvo no seu PC.)
# > drive_auth()

# 2.2 - USAMOS ESTE: Autenticação com escopo completo de acesso ao Drive
# Isso abre o navegador para você fazer login e autorizar o acesso.
# O token fica salvo no seu computador, então você não precisa repetir sempre.
# > drive_auth(scopes = "https://www.googleapis.com/auth/drive")

# 3-Listar arquivos
drive_find("P2-Mispriced-Diamonds.csv")

# 4.1-Baixar arquivo devido extensão ".csv" (google sheet conecta "direto" no link) / e substituir se tiver um outro arquivo com o mesmo nome.
# Ou você lê diretor da pasta do google drive, via o teu explorador de arquivos (no meu caso: windows)
drive_download(as_id("1aJkGBZtrtKpsKaKbgNhDeR9eReUd0xPX"), 
               path = "P2-Mispriced-Diamonds.csv", 
               overwrite = TRUE)
# 4.2-Carregar arquivo no R (que consta na mesma pasta "setada")
mydata<-fread("P2-Mispriced-Diamonds.csv") 
# carrega mais rápido arquivos grandes > função da biblioteca "data.table"
# mydata <- read.csv(file.choose())
# 4.3-Remover arquivo na pasta se não quiser sobrecarregar diretorio
file.remove("P2-Mispriced-Diamonds.csv")

# Analise
mydata
str(mydata)
dim (mydata)
summary(mydata)
str(mydata)
table(mydata$clarity)

# Gráfico de Dispersão
#1)aes - Mapeamentos Estéticos
ggplot(data = mydata, aes(x=carat, y =price)) +
  geom_point()

#2) Adicionando a variavel qualitativa ordinal: "clarity", com as cores
ggplot(data = mydata, aes(x=carat, y =price, colour=clarity))+
  geom_point() 
 

#3) Eliminar "outliers" e melhorar o "alpha" (transparência) 
# O comando geom_smooth adiciona linhas no gráfico

ggplot(data=mydata [mydata$carat<2.5,],
       aes(x=carat, y=price, colour=clarity)) +
       geom_point(alpha=0.1) +
       geom_smooth() 

#PARA COMPARAR CADA ETAPA DE EVOLUçÂO DO GRAFICO ###
#Temos duas variáveis númericas e uma categórica
#Onde eliminamos por analise visual o outlier limitando a "carat<2.5"
#Identificamos a variavel categorica no gráfico através das cores legendadas


=======

#-- Revisão: Analise-Precos-Diamantes

#Baixe o arquivo: P2-Mispriced-Diamonds.csv
#https://www.superdatascience.com/pages/rcourse
#https://rpubs.com/Rachana_SV/1120075
#https://drive.google.com/file/d/1aJkGBZtrtKpsKaKbgNhDeR9eReUd0xPX/view?usp=drive_link

# rm(list =ls ()) - apaga o Enviroment

# Verificar o diretótio de trabalho atual
getwd()

# Definir o diretório de trabalho
# Aqui é a unidade do usuario do projeto, então você instala o Google Drive para computador, 
# e o Google Drive aparece no Explorador de Arquivos como uma unidade.
setwd("G:/Meu Drive/R/Analise-Preco-Diamantes/Pasta-Arquivo-Projeto")

# 1- Instalar o pacote que permite "R" ACESSAR O GOOGLE DRIVE
# Instalar apenas se não estiver instalado
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2", dependencies = FALSE)
}
library(ggplot2)

if (!requireNamespace("data.table", quietly = TRUE)) {
  install.packages("data.table", dependencies = FALSE)
}
library(data.table)

if (!requireNamespace("googledrive", quietly = TRUE)) {
  install.packages("googledrive", dependencies = FALSE)
}
library(googledrive)

# 2.1-Autenticação (Só precisa rodar apenas na primeira vez (ou quando trocar de conta/escopo). O token fica salvo no seu PC.)
# > drive_auth()

# 2.2 - USAMOS ESTE: Autenticação com escopo completo de acesso ao Drive
# Isso abre o navegador para você fazer login e autorizar o acesso.
# O token fica salvo no seu computador, então você não precisa repetir sempre.
# > drive_auth(scopes = "https://www.googleapis.com/auth/drive")

# 3-Listar arquivos
drive_find("P2-Mispriced-Diamonds.csv")

# 4.1-Baixar arquivo devido extensão ".csv" (google sheet conecta "direto" no link) / e substituir se tiver um outro arquivo com o mesmo nome.
# Ou você lê diretor da pasta do google drive, via o teu explorador de arquivos (no meu caso: windows)
drive_download(as_id("1aJkGBZtrtKpsKaKbgNhDeR9eReUd0xPX"), 
               path = "P2-Mispriced-Diamonds.csv", 
               overwrite = TRUE)
# 4.2-Carregar arquivo no R (que consta na mesma pasta "setada")
mydata<-fread("P2-Mispriced-Diamonds.csv") 
# carrega mais rápido arquivos grandes > função da biblioteca "data.table"
# mydata <- read.csv(file.choose())
# 4.3-Remover arquivo na pasta se não quiser sobrecarregar diretorio
file.remove("P2-Mispriced-Diamonds.csv")

# Analise
mydata
str(mydata)
dim (mydata)
summary(mydata)
str(mydata)
table(mydata$clarity)

# Gráfico de Dispersão
#1)aes - Mapeamentos Estéticos
ggplot(data = mydata, aes(x=carat, y =price)) +
  geom_point()

#2) Adicionando a variavel qualitativa ordinal: "clarity", com as cores
ggplot(data = mydata, aes(x=carat, y =price, colour=clarity))+
  geom_point() 
 

#3) Eliminar "outliers" e melhorar o "alpha" (transparência) 
# O comando geom_smooth adiciona linhas no gráfico

ggplot(data=mydata [mydata$carat<2.5,],
       aes(x=carat, y=price, colour=clarity)) +
       geom_point(alpha=0.1) +
       geom_smooth() 

#PARA COMPARAR CADA ETAPA DE EVOLUçÂO DO GRAFICO ###
#Temos duas variáveis númericas e uma categórica
#Onde eliminamos por analise visual o outlier limitando a "carat<2.5"
#Identificamos a variavel categorica no gráfico através das cores legendadas


>>>>>>> 5e53869052f679d787ba388d9c51645f4c026b98
  