import objs

import strutils
import strformat

var   
  clientespop:seq[ClientePoupanca]
  clientescorr:seq[ClienteCorrente] 

proc linha() =
  echo "==========================================================================="

proc menu*() =
  echo """
  ADMIN - V1 - SEU JOAQUIM
  [1] - CADASTRAR CLIENTE DE CONTA POUPANCA
  [2] - CADASTRAR CLIENTE DE CONTA CORRENTE
  [3] - LISTAR CLIENTE CONTA POUPANCA
  [4] - LISTAR CLIENTE CONTA CORRENTE
  [5] - SAIR
	"""
  linha()

  linha()

proc adicionarClientePoupanca*() = 
  linha()
  var clientepoupanca = ClientePoupanca()
  echo "Bem vindo ao Cadastro de Clientes para Conta Poupança" 
  
  echo "Digite o nome do Cliente"
  clientepoupanca.nome=readline(stdin)

  echo "Digite o endereco do Cliente"
  clientepoupanca.endereco=readline(stdin)

  echo "Digite o telefone do Cliente"
  clientepoupanca.telefone=readline(stdin)

  echo "Digite o saldo inicial da conta Cliente"
  clientepoupanca.saldo=parseFloat(readline(stdin))

  echo "Digite a taxa de rendimento do cliente"
  echo "O percentual mensal de rendimentos e deve estar entre 0,5% e 2% ao mês"  
  clientepoupanca.rendimento=parseFloat(readline(stdin))

  clientespop.add(clientepoupanca)
  echo "Cliente cadastrado com sucesso!!"
  linha()

proc adicionarClienteCorrente*() = 
  linha()
  var clientecorrente = ClienteCorrente()
  echo "Bem vindo ao Cadastro de Cliente para Conta Corrente" 
  
  echo "Digite o nome do Cliente"
  clientecorrente.nome=readline(stdin)

  echo "Digite o endereco do Cliente"
  clientecorrente.endereco=readline(stdin)

  echo "Digite o telefone do Cliente"
  clientecorrente.telefone=readline(stdin)  

  echo "Digite o saldo inicial da conta Cliente"
  clientecorrente.saldo=parseFloat(readline(stdin))

  echo "Digite o limite do cliente"   
  clientecorrente.limite=parseFloat(readline(stdin))

  echo "Digite a taxa de operação do cliente"
  echo "O percentual deve estar entre 0,5% e 2% ao mês"  
  clientecorrente.taxadeop=parseFloat(readline(stdin))

  
  clientescorr.add(clientecorrente)
  echo "Cliente cadastrado com sucesso!!"
  linha()




proc listaClientesPoupança*() =
   for clientepoupanca in clientespop :
    echo "Nome do Cliente: " & clientepoupanca.nome
    echo "Endereço do Cliente: " & clientepoupanca.endereco
    echo "Telefone do Cliente: " & clientepoupanca.telefone    
    echo "Saldo do Cliente: " , clientepoupanca.saldo
    echo "Rendimentos do Cliente: " , clientepoupanca.rendimento
    


proc listaClientesCorrente*() =
   for clientecorrente in clientescorr :
    echo "Nome do Cliente: " & clientecorrente.nome
    echo "Endereço do Cliente: " & clientecorrente.endereco 
    echo "Telefone do Cliente: " & clientecorrente.telefone
    echo "Saldo do Cliente: " , clientecorrente.saldo   
    echo "Limite do Cliente: " , clientecorrente.limite
    echo "Taxa de operação do Cliente: " , clientecorrente.taxadeop
    


