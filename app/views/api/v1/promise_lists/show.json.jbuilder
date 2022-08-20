json.extract! @promise_list, :id, :title, :description
json.user do
  json.id @promise_list.user.id
  json.username @promise_list.user.username
end
json.promises @promise_list.promises do |promise|
  json.extract! promise, :id, :title, :description, :is_claimed
end
