module ApplicationHelper

    #Returns the full title on, per page basis
		def full_title(page_title ='')
      base_title = "Online Courses"
        if page_title.empty?
          base_title
        else
          "#{page_title} | #{base_title}"
        end
    end

    def image_for(course, options= { size: 100})
      size = options[:size]
      if course.image?
          image_tag course.image.url(:thumb), width: size, class: "card-img-top"
      end
    end
end
