# language: pt

@end
Funcionalidade: [Sacola] fazer compras
    COMO usuário
    QUERO poder adicionar produtos ao carrinho
    PARA realizar compras

@checkout
    Cenário: Finalizar uma compra
        Dado que esteja na home
          Quando faço login com usuário juliana.sequeira_BOLS@compasso.com.br e senha 123456
          Quando busco o produto shirt
          E adiciono ao carrinho
          E visualizo a sacola de compras
          E finalizo a compra
          E escolho o endereco
          E aceito os termos
          E escolho o metodo de pagamento
          E confirmo o pedido
          Então deve haver uma confirmação do pedido