# language: pt

@bag
@all
Funcionalidade: [Sacola] fazer compras
    COMO usuário
    QUERO poder adicionar produtos ao carrinho
    PARA realizar compras
    
@bag_add
    Cenário: Adicionar produto na sacola
        Dado que esteja na home
        Quando busco o produto dress
        E adiciono ao carrinho
        Então irá aparecer um modal podendo continuar compras ou finalizar compra

@change_quant
    Cenário: Alterar quantidade de produtos na sacola
        Dado que esteja na home
        Quando busco o produto shirt
        E adiciono ao carrinho
        E visualizo a sacola de compras
        E altero a quantidade de itens
        Então deve mostrar a mensagem que tem dois produtos

@delete_product
    Cenário: Excluir produto da sacola
        Dado que esteja na home
        Quando busco o produto dress
        E adiciono ao carrinho
        E visualizo a sacola de compras
        E excluo um item
        Então deve avisar que o carrinho está vazio
