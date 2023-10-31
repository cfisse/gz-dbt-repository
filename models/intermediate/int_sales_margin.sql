SELECT * 
FROM {{ source('raw', 'sales') }} 
JOIN {{ source('raw', 'product') }}
USING (pdt_id)