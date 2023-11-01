SELECT *
{{ ref('raw','bing') }}
UNION ALL 
SELECT *
FROM {{ ref('raw','criteo') }}
UNION ALL
SELECT * 
FROM {{ ref('raw','adwords') }}
UNION ALL
SELECT * 
FROM {{ ref('raw','facebook') }}