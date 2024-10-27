# Métricas

O coeficiente de correlação é uma medida estatística que quantifica a força e a direção da relação linear entre duas variáveis. Ele indica como duas variáveis estão relacionadas e se movem em conjunto. Existem vários tipos de coeficientes de correlação, sendo o mais comum o coeficiente de correlação de Pearson, representado pela letra "r".

Propriedades do coeficiente de correlação de Pearson:
Valores variam entre -1 e 1:

- 1: Correlação positiva perfeita, indicando que conforme uma variável aumenta, a outra também aumenta de forma linear.

- 0: Nenhuma correlação linear entre as variáveis.

- -1: Correlação negativa perfeita, indicando que conforme uma variável aumenta, a outra diminui de forma linear.

Interpretação dos valores:

Correlação positiva: Quando 𝑟>0
- r>0, indica que as variáveis tendem a aumentar juntas.

Correlação negativa: Quando 𝑟<0
- r<0, indica que quando uma variável aumenta, a outra tende a diminuir.

Força da correlação: Quanto mais próximo de 1 ou -1, mais forte é a correlação.

O coeficiente de correlação é útil em análise de dados para entender relações entre variáveis, mas não implica causalidade.

## Educação vs Economia

1ª - IDEB vs PIB cidade (OK)
2ª - Tx. de Aprovação vs PIB da cidade
3ª - Tx. de Reprovação vs PIB da cidade
4ª - Tx. de Abandono vs PIB da cidade

Variação do IDEB = IDEB Final - IDEB Inicial
Tx. Variação = (Variação do IDEB * 100) / IDEB Inicial


### TODO

1 - Padronizar nomes
2 - Descobrir como adicionar o IDEB *(DONE)*
3 - Padronizar constraints (nomes)
4 - Criar Índices para as foreign keys

3 - Adicionar constraints restantes (NN, UN, FK, etc...)
    
    - Primary Key Constraint: PK_{TABLE_NAME}
    
    - Foreign Key Constraint: FK_{COLUMN}_{PARENT_TABLE}_{CHILD_TABLE}
    
    - Not Null Constraint: NN_{COLUMN}_{TABLE_NAME} *OK*
    
    - Unique Constraint: UN_{COLUMN}_{TABLE_NAME}

    - Index Constraint: IDX_{MOTIVE}_{COLUMN}_{TABLE_NAME}

    - Sequence: SEQ_{COLUMN}_{TABLE_NAME}

# 1. Correções: 

1.4. Colocar no "ANEXO": Script SQL. 
