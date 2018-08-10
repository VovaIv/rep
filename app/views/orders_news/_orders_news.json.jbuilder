json.extract! orders_news, :id, :num, :hz, :client, :date, :created_at, :updated_at
json.url orders_news_url(orders_news, format: :json)
