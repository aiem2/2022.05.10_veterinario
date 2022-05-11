json.extract! pethistory, :id, :weight, :height, :diagnostic, :created_at, :updated_at
json.url pethistory_url(pethistory, format: :json)
