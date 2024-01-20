json.extract! purchase, :id, :name, :user_id, :status, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
