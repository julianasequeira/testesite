# language: pt

@login
@all
Funcionalidade: [Login] fazer login 
    COMO usuário
    QUANDO fizer login
    PARA fazer compras

    Cenário: Login na home
        Dado que esteja na home
        Quando clicar para fazer login
        E preencher o formulario com um email válido juliana.sequeira_BOLS@compasso.com.br e uma senha válida 123456
        Então deve aparecer o nome do lado da opção de sair
