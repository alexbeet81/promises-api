json.array! @promise_lists do |promise_list|
  json.extract! promise_list, :id, :title, :description
end
