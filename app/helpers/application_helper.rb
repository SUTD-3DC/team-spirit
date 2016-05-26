module ApplicationHelper
  def copyright
    "All rights reserved #{Time.now.year}".html_safe
  end

  def event_date(event)
    if event.start_date == event.end_date
      event.start_date.strftime('%d %B %Y')
    else
      "#{event.start_date.strftime('%d %B %Y')} to #{event.end_date.strftime('%d %B %Y')}"
    end
  end
end
