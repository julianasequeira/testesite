# language: pt

@logout
Funcionalidade: [Logout] fazer logout
    COMO usuário
    QUERO poder fazer logout
    PARA sair da minha conta

    Cenário: Logout
        Dado que esteja na home
        E esteja logado
        Quando clicar em logout
        Então deve sair da conta e ir para login