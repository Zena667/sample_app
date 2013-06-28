def full_title(page_title)
  header = "Ruby on Rails Tutorial Sample App"
  if page_title.empty?
    header
  else
    "#{header} | #{page_title}"
  end
end