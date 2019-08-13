*** Settings ***
Library                    SeleniumLibrary
Library                    BuiltIn

*** Variables ***

*** Keywords ***
Dado que acesso o "${url}" usando navegador "${browser}"
        open browser            ${url}   ${browser}

E pesquiso por "${pesquisa}"
        input text              //*[@id="tsf"]/div[2]/div/div[1]/div/div[1]/input       ${pesquisa}

E clico em pesquisar
        click element           //*[@id="tsf"]/div[2]/div/div[3]/center/input[1]
