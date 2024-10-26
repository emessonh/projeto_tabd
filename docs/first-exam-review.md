# First Exam Review

## Definição do projeto/escopo: 

1. Ok!

## Descrição detalhada sobre a base de dados OLTP:

1. O Dicionário de Dados deve ser referente a base de dados OLTP (arquivos CSV, no seu caso). 

2. Acrescentar o dicionário de dados para o Star Schema também é uma boa prática **(já consta no trabalho)**.

## Modelo lógico/físico do Data Warehouse (Modelo Star Schema)

1. Correções: 

1.1. É recomendado criar chaves autonumeração (sequences, surrogate keys) para as dimensões.

1.2. No modelo apresentado, sk_municipio é um “código composto de 7 dígitos, sendo os dois primeiros referentes ao código da Unidade da Federação”.

1.3. Remover/Corrigir TAB_CORRELACAO_IDEB_PIB.

1.3.1. Justificativa: É possível criar uma métrica do tipo “Crescimento Percentual em um período” no Power BI. Criando-a no Power Bi, a métrica é recalculada de acordo com o período a que se refere (ano, trimestre, etc). Outras métricas calculadas a partir do crescimento percentual também podem ser adicionadas (exemplo: coeficiente de correlação entre duas taxas). Os valores das métricas de uma tabela fato devem ser coerentes com todas as dimensões e, pelas explicações apresentadas, não é possível se obter valores do PIB por sk_esfera_publica (esfera da administração pública) e sk_tipo_ensino (nível de ensino da educação básica).

1.4. Colocar no "ANEXO": Script SQL. 

1.5. Algumas constraints NOT NULL estão sem nome.

1.6. Alguns atributos do tipo NUMBER estão sem escala definida. Checar se isso é realmente o desejado.