

-- PACKAGE BODY PEDIDOS 

CREATE PACKAGE BODY PKG_PEDIDOS AS 

PROCEDURE PRC_REALIZAR_PEDIDO (
    P_ID_PRODUTO IN TB_PRODUTOS.ID_PRODUTO%TYPE,
    P_QUANTIDADE IN TB_PEDIDOS.QUANTIDADE%TYPE,
    P_ID_CLIENTE IN TB_CLIENTES.ID_CLIENTE%TYPE
)

IS
    V_ESTOQUE TB_PRODUTOS.ESTOQUE%TYPE;
    V_PRECO   TB_PRODUTOS.PRECO%TYPE;
    V_TOTAL   TB_PEDIDOS.VALOR_TOTAL%TYPE;

BEGIN

    -- Consulta o estoque e o preço do produto
    SELECT ESTOQUE, PRECO
    INTO V_ESTOQUE, V_PRECO
    FROM TB_PRODUTOS
    WHERE ID_PRODUTO = P_ID_PRODUTO;

    -- Valida a quantidade solicitada
    IF P_QUANTIDADE <= 0 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'A quantidade precisa ser maior do que zero.'
        );
    END IF;

    -- Verifica se existe estoque suficiente
    IF V_ESTOQUE < P_QUANTIDADE THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Estoque insuficiente.'
        );
    END IF;

    -- Calcula o valor total do pedido
    V_TOTAL := V_PRECO * P_QUANTIDADE;

    -- Insere o pedido
    INSERT INTO TB_PEDIDOS (
        ID_PEDIDO,
        ID_PRODUTO,
        ID_CLIENTE,
        QUANTIDADE,
        VALOR_TOTAL,
        DATA_PEDIDO
    )
    VALUES (
        SEQ_PEDIDOS.NEXTVAL,
        P_ID_PRODUTO,
        P_ID_CLIENTE,
        P_QUANTIDADE,
        V_TOTAL,
        SYSDATE
    );

    -- Atualiza o estoque do produto
    UPDATE TB_PRODUTOS
    SET ESTOQUE = ESTOQUE - P_QUANTIDADE
    WHERE ID_PRODUTO = P_ID_PRODUTO;

    -- Confirma a transação
    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Pedido realizado com sucesso.');
    DBMS_OUTPUT.PUT_LINE('Valor total: R$ ' || V_TOTAL);

EXCEPTION

    -- Produto não encontrado
    WHEN NO_DATA_FOUND THEN
        ROLLBACK;

        RAISE_APPLICATION_ERROR(
            -20003,
            'Produto não encontrado.'
        );

    -- Trata os demais erros
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;

END;
/		 
	