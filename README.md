# 💎 Análise de Preços de Diamantes com R

Este projeto realiza uma análise exploratória de preços de diamantes utilizando R, com foco em entender os fatores que influenciam o valor de mercado.

## 📊 Objetivo

Investigar como características como quilate, cor, clareza e corte afetam o preço dos diamantes, utilizando visualizações e estatísticas descritivas.

## 🧰 Tecnologias e Pacotes

- **Linguagem**: R
- **Pacotes principais**:
  - `ggplot2`
  - `dplyr`
  - `readr`
  - `knitr`
  - `rmarkdown`

## 📁 Estrutura do Projeto

📂 Analise-Preco-Diamantes/ 
├── Analise-Preco-Diamantes.Rmd # Relatório em R Markdown 
├── Analise-Preco-Diamantes.html # Versão HTML do relatório 
├── Analise-Precos-Diamantes.R # Script R puro 
├── P2-Mispriced-Diamonds.csv # Base de dados └── Pasta-Arquivo-Projeto/ # Subprojeto adicional

## 📈 Resultados

- Visualizações de dispersão entre quilate e preço
- Boxplots por categoria de corte
- Correlações entre variáveis
- Identificação de diamantes fora do padrão de precificação

## 📦 Fonte dos Dados

O conjunto de dados foi obtido de [Kaggle](https://www.kaggle.com/datasets/shivam2503/diamonds) e contém informações sobre mais de 50 mil diamantes.

## ▶️ Como Executar

1. Clone o repositório:
   ```bash
   git clone https://github.com/paulopconsult-bit/analise-precos-diamantes.git

2. Abra o arquivo Analise-Preco-Diamantes.Rmd no RStudio

3. Execute o relatório ou gere o HTML com:

rmarkdown::render("Analise-Preco-Diamantes.Rmd")

📌 Autor
Paulo Dias 
Consultor Data Driven