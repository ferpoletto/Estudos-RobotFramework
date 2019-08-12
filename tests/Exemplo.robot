*** Settings ***
Documentation             Suite description
Resource                  ../resources/resources.robot
Test Setup                Abrir navegador
#Suite Setup               Conectar a base de dados e gerar massa de dados
#Suite Teardown            Desconectar a base de dados e apagar dados usados no teste
Test Teardown             Fechar navegador

*** Variables ***

*** Test Cases ***
CT01: Exemplo
        Dado que eu acesse o site
        E pesquise por "Sites de automação de teste"

