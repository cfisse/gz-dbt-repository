SELECT
  f.date_date,
  ROUND(f.operational_margin  - c.ads_cost,2) AS ads_margin,
  f.average_basket,
  c.ads_cost
FROM {{ ref('finance_days') }} f
LEFT JOIN {{ ref('int_campaigns_day') }} c 
    USING(date_date)
ORDER BY date_date desc