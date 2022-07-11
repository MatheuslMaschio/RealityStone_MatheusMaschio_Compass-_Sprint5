Funcionalidade: pagamento
    Como usuário do sistema
    Quero pagar o produto
    Para receber o mesmo

    Contexto:
        Dado que o produto já foi escolhido e já está no carrinho

Esquema do Cenário: validar pagamento 
Dado que o usuário esteja pagando 
Quando o usuário selecionar a forma de pagamento "<Transferencia Bancaria>" ou "<Cheque>"
Então uma mensagem deve ser exibida "<msg>"
Exemplos:
|Forma de Pagemento    |msg                                                                                                                                                                    |                   
|Transferencia Bancaria|Valor do pedido: ""; Nome da conta: Pradeep Macharla, Nome do Banco: RTP; referencia de encomenda: ; A sua encomenda será enviada assim que recebermos o seu pagamento |
|Cheque                |Valor do pedido: ""; Nome: pradeep; endereço: xyz; referencia de encomenda: ; A sua encomenda será enviada assim que recebermos o seu pagamento.                       |                             
