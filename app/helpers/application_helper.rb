module ApplicationHelper

  # returns posta title... it doesn't "return" anything but ruby style lalala
  def posta_title(page_title)
    base_title = "Magia interpoladax"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
