# language: pt

@busca
Funcionalidade: [Busca] buscar por produtos
    COMO usuário
    QUERO poder realizar busca 
    PARA pesquisar os produtos

@busca_produto_logado
    Cenário: Pesquisa logado
        Dado que esteja na home
        Quando faço login com usuário juliana.sequeira_BOLS@compasso.com.br e senha 123456
        E busco o produto dress 
        Então deve aparecer uma lista de produtos

@busca_produto_existente_deslogado
    Cenário: Pesquisa existente logado 
        Dado que esteja na home
        Quando busco o produto dress
        Então deve aparecer uma lista de produtos

@busca_produto_inexistente_deslogado
    Cenário: Pesquisa produto inexistente deslogado
        Dado que esteja na home
        Quando busco o produto batatinha
        Então deve aparecer uma mensagem para avisar que não tem o produto

@busca_subopcao
    Cenário: Acessar sub-opção no menu do header
        Dado que esteja na home
        Quando passo o mouse no tipo de produto e clico em sub opcao
        Então deve aparecer uma lista de produtos
