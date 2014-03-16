json.array!(@objs) do |obj|
  json.extract! obj, :id, :name, :app_id
  json.url obj_url(obj, format: :json)
end
