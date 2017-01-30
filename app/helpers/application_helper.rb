module ApplicationHelper
  def date(date)
    return date.strftime('%d/%m/%y') rescue "Jamais"
  end

  def sexy_time_ago_in_words(date)
    return time_ago_in_words(date) rescue "Jamais"
  end
end
