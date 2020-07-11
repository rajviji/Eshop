json.extract! product, :id, :name, :brand_name, :colour, :image, :prize, :size, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
