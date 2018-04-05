json.extract! sale, :id, :payment_type, :expired, :amount, :created_at, :updated_at
json.url sale_url(sale, format: :json)
