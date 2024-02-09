module.exports = {
  getCreditScore: `
    SELECT 
      ROUND(SUM(COALESCE(products.price, 0)) / (COUNT(orders.id) * 100)) AS credit_score,
    business.name,
    business.address,
    business.id
    FROM business
    LEFT JOIN departments ON departments.business_id = business.id
    LEFT JOIN products ON products.department_id = departments.id
    LEFT JOIN order_items ON order_items.product_id = products.id
    LEFT JOIN orders ON orders.id = order_items.order_id
    WHERE business.id = $1
    AND orders.id is not null
    GROUP BY(
      business.name,
      business.address,
      business.id
    )
`,

  orderDetails: `
    SELECT 
      COUNT(DISTINCT orders.id) total_orders,
      COALESCE(SUM(products.price), 0) AS total_amount,
      COALESCE(SUM(products.price) FILTER (WHERE orders.created_at::DATE = NOW()::DATE), 0) AS total_amount_today,
      COUNT(orders.id) FILTER (WHERE orders.created_at::DATE = NOW()::DATE) total_orders_today
    FROM orders
    LEFT JOIN order_items ON order_items.order_id = orders.id
    LEFT JOIN products ON products.id = order_items.product_id
    LEFT JOIN business ON business.id = (SELECT business_id FROM departments WHERE products.department_id = departments.id)
    WHERE business.id = $1
  `,

};
