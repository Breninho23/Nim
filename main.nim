import utils
import objs
import strutils
import strformat
var x = "1"
while x != "5":
  
  menu()
  var x = readline(stdin)
  case x
    of "1": adicionarClientePoupanca()
    of "2": adicionarClienteCorrente()
    of "3": listaClientesPoupança()
    of "4": listaClientesCorrente()
    of "5": echo "Tchau KCT"
    else: echo "Opção inválida" 
    

  
