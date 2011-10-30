module ApplicationHelper
 def title
  base_title ="jimmy's  app"
  if @title.nil?
   base_title
  else
   "#{base_title} | #{@title}"
   end
  end
   
   def logo
    image_tag("images.jpg", :alt => "Jims App", :class => "round")
    end
end
