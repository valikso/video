module CommentsHelper
  def urls_to_images(s)
     s.gsub! /\s(http:\/\/.*?\.(png|jpg))\s/, '<p><img src="\1" width=200px/></p>'
     s.html_safe
   end
end
