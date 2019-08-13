*** Settings ***
Documentation             Suite description
Resource                  ../resources/resources.robot

*** Variables ***

*** Test Cases ***
CT01: Exemplo
        Dado que acesso o "www.google.com.br" usando navegador "Firefox"
        E pesquiso por "Automação de testes"
        E clico em pesquisar

