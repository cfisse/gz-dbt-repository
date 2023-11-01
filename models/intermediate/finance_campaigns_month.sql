SELECT
  DATE_TRUNC(date_date, MONTH) AS month,
  ROUND(SUM(ads_margin), 2) as ads_margin,
  ROUND(SUM(average_basket), 2) as average_basket,
  ROUND(SUM(ads_cost), 2) as ads_cost
FROM {{ ref('finance_campaigns_day') }}
GROUP BY month
ORDER BY month DESC 