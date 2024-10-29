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

4264,2707206,Poço das Trincheiras,2005,IDEB,Estadual,Ensino Fundamental - Anos Iniciais,2.4

4266,2707206,Poço das Trincheiras,2005,IDEB,Municipal,Ensino Fundamental - Anos Iniciais,1.9

4269,2707206,Poço das Trincheiras,2007,IDEB,Estadual,Ensino Fundamental - Anos Iniciais,2.6

4271,2707206,Poço das Trincheiras,2007,IDEB,Municipal,Ensino Fundamental - Anos Iniciais,2.4

4274,2707206,Poço das Trincheiras,2009,IDEB,Estadual,Ensino Fundamental - Anos Iniciais,0.0

4276,2707206,Poço das Trincheiras,2009,IDEB,Municipal,Ensino Fundamental - Anos Iniciais,2.8

4279,2707206,Poço das Trincheiras,2011,IDEB,Estadual,Ensino Fundamental - Anos Iniciais,3.0

4281,2707206,Poço das Trincheiras,2011,IDEB,Municipal,Ensino Fundamental - Anos Iniciais,2.9

4284,2707206,Poço das Trincheiras,2013,IDEB,Estadual,Ensino Fundamental - Anos Iniciais,0.0

4286,2707206,Poço das Trincheiras,2013,IDEB,Municipal,Ensino Fundamental - Anos Iniciais,4.0

4289,2707206,Poço das Trincheiras,2015,IDEB,Estadual,Ensino Fundamental - Anos Iniciais,0.0

4291,2707206,Poço das Trincheiras,2015,IDEB,Municipal,Ensino Fundamental - Anos Iniciais,3.9

4294,2707206,Poço das Trincheiras,2017,IDEB,Estadual,Ensino Fundamental - Anos Iniciais,0.0
4295,2707206,Poço das Trincheiras,2017,IDEB,Estadual,Ensino Médio,3.1

4297,2707206,Poço das Trincheiras,2017,IDEB,Municipal,Ensino Fundamental - Anos Iniciais,4.2

4301,2707206,Poço das Trincheiras,2019,IDEB,Estadual,Ensino Fundamental - Anos Iniciais,0.0
4302,2707206,Poço das Trincheiras,2019,IDEB,Estadual,Ensino Médio,3.2

4304,2707206,Poço das Trincheiras,2019,IDEB,Municipal,Ensino Fundamental - Anos Iniciais,4.4

4308,2707206,Poço das Trincheiras,2021,IDEB,Estadual,Ensino Fundamental - Anos Iniciais,0.0
4309,2707206,Poço das Trincheiras,2021,IDEB,Estadual,Ensino Médio,2.7

4311,2707206,Poço das Trincheiras,2021,IDEB,Municipal,Ensino Fundamental - Anos Iniciais,5.0
