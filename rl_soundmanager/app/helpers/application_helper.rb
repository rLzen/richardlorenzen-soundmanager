module ApplicationHelper
  # Notes for understanding methods in ruby
  # Returns the full title on a per-page basis
  def full_title(page_title = '')
    base_title = "Sound Manager Testing App"
    if page_title.empty?                    # ? Boolean test
      base_title
    else
      "#{page_title} | #{base_title}"       # String interpolation
    end
  end
end
