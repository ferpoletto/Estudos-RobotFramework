*** Settings ***
Library                    SeleniumLibrary
Library                    BuiltIn
Library                    DatabaseLibrary
Library                    DateTime
Library                    OperatingSystem

*** Variables ***
${URL}                     http://www.google.com.br
${BROWSER}                 chrome
${DBName}
${DBUser}
${DBPass}
${DBHost}
${DBPort}


*** Keywords ***
Abrir navegador
        Open Browser                        about:blank     ${BROWSER}
        Maximize Browser Window

Fechar navegador
        Close Browser

Conectar a base de dados e gerar massa de dados
        Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
        Execute sql script                  ../scripts/GerarMassaDados.sql

Desconectar a base de dados e apagar dados usados no teste
        Execute sql script                  ../scripts/DeletarMassaDados.sql
        Disconnect From Database

###Passo a Passo
Dado que eu acesse o site
        Go to                               ${URL}

E pesquise por "${PESQUISA}"
        input text                          //*[@id="tsf"]/div[2]/div/div[1]/div/div[1]/input       ${PESQUISA}
