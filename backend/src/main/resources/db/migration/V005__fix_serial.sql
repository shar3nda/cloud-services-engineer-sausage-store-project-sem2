SELECT
    setval(
        pg_get_serial_sequence('orders', 'id'),
        (
            SELECT
                MAX(id)
            FROM
                orders
        )
    );

SELECT
    setval(
        pg_get_serial_sequence('product', 'id'),
        (
            SELECT
                MAX(id)
            FROM
                product
        )
    );
