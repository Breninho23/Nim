type
  ClienteCorrente* = ref object of RootObj
    nome*:string 
    endereco*:string 
    telefone*:string      
    saldo*:float
    limite*:float
    taxadeop*:float

  ClientePoupanca* = ref object of RootObj
    nome*:string 
    endereco*:string 
    telefone*:string   
    saldo*:float
    rendimento*:float
    

  