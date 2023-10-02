' Verifica se foram fornecidos argumentos de linha de comando
If WScript.Arguments.Count < 2 Then
    WScript.Echo "Uso: mainframe.vbs <IP do Mainframe> <Porta do Mainframe>"
    WScript.Quit(1) ' Sair com código de erro
End If

' Argumentos de linha de comando
Dim ip
Dim porta

ip = WScript.Arguments.Item(0) ' Primeiro argumento é o IP
porta = WScript.Arguments.Item(1) ' Segundo argumento é a Porta

' Comando para iniciar o emulador wc3270 com os argumentos fornecidos
Dim objShell
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run "wc3270.exe " & ip & ":" & porta & " -model 2 -devname BRADESCONET -httpd 127.0.0.1:6001", 0

' O script pode continuar executando outras tarefas se necessário
WScript.Quit(0) ' Sair com código de sucesso
