# language: pt

@produto
@all
Funcionalidade: [Ver] informações do produto
    COMO usuário
    QUERO poder ver mais informações 
    PARA avaliar a necessidade de compra do produto

    
@produto_pagina
    Cenário: Acessar página do produto
        Dado que esteja na home
        Quando busco o produto dress
        E clico no produto 
        Então deve abrir a página do produto
