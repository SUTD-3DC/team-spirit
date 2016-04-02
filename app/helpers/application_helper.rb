module ApplicationHelper
  def copyright
    "All rights reserved #{Time.now.year}".html_safe
  end

end
