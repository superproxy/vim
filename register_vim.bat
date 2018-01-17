rem ===========vim==========
set VIM_HOME=%CD%\vim80
wmic ENVIRONMENT where "name='VIM_HOME'" delete
wmic ENVIRONMENT create name='VIM_HOME',username="<system>",VariableValue="%VIM_HOME%"
rem ===========vim end==========


rem register
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%VIM_HOME%;%PATH%"

 
