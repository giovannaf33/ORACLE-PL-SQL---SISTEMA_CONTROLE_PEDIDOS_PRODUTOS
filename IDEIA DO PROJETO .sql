 



PROJETO- SISTEMA DE CONTROLE E PEDIDOS 
Objetivo
O projeto tem como propósito desenvolver uma organização simples e objetiva para um sistema de produtos e pedidos, muito utilizado em lojas. 

Para o sistema foram desenvolvidas três tabelas principais, sendo elas: TB_PRODUTOS, TB_PEDIDOS E TB_CLIENTES. Por meio delas, estamos exercitando conceitos importantes da linguagem PL/SQL, como chaves primárias (primary key), chaves estrangeiras (foreign key), SEQUENCE, PROCEDURE e EXCEPTION. 

A PROCEDURE foi criada para ser a responsável por processar um pedido de venda. Os parâmetros que a procedure recebem são o produto, a quantidade e o cliente, realiza a consulta do preço e estoque daquele produto e, em seguida faz a validação se a quantidade desejada pelo cliente é válida e se existe estoque suficiente do produto em questão.  

Após a validação, a PROCEDURE calcula o valor total e insere o pedido na tabela TB_PEDIDOS, utilizando a SEQUENCE para gerar automaticamente o ID do pedido. Feito isso, atualiza o estoque e confirma a transação com o comando COMMIT.  

No EXCEPTION (tratativa de erro) se o produto não existir, o Oracle ao não encontrar registros irá informar ao usuário por meio de uma mensagem informando que o produto não foi encontrado. 

Caso ocorra qualquer outro tipo de erro, a PROCEDURE realiza o ROLLBACK da transação e trata a exceção, garantindo que os dados sejam processados de forma íntegra. 
