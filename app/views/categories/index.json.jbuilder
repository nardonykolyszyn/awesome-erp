json.array! @categories do |category|
  json.full_name category.pg_search_highlight.html_safe
  json.id category.id
  json.name category.name
end
