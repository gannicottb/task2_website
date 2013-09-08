module ApplicationHelper
  #As used in Michael Hartl's Ruby on Rails Tutorial
  def full_title(page_title)
    base_title = "task2_website"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
