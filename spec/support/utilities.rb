#This method is a duplicate of the app/helpers/application_helpers.rb
#Files in spec/support directory are automatically included by RSpec

def full_title(page_title)
  base_title = "Ruby on Rails Tutorial Sample App"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end