*** Settings ***
Documentation    Aqui ficarao todos os elementos da pagina home (Pagina principal)


*** Variables ***

&{DASHBOARD}
...    titulo=xpath=//h6[contains(.,'Dashboard')]
...    tempo=xpath=//div[2]/div[2]/div/div[1]
...    ação=xpath=//div[2]/div[2]/div/div[2]
...    lancamento=xpath=//div[2]/div[2]/div/div[3]
...    postagem=xpath=//div[2]/div[2]/div/div[4]
...    ausentes=xpath=//div[2]/div[2]/div/div[4]
...    distribuição_Un=xpath=//div[2]/div[2]/div/div[6]
...    distribuição_Loc=xpath=//div[2]/div[2]/div/div[7]
