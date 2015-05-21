module WelcomeHelper

  # Selector for CSS classes based on length of text
  def title_length(input_name)

    # css classes are stored here for the reason of short function name
    # css classes are taken from welcome.scss file
    css_class_1 = 'main-page-title-1-line'
    css_class_2 = 'main-page-title-2-line'
    css_class_3 = 'main-page-title-3-line'

    value = input_name.size

    case value
      when 1..10
        return css_class_1
      when 10..20
        return css_class_2
      when 21..30
        return css_class_3
      when 30..(1.0/0.0)
        return css_class_3
      else
        nil
    end
  end

end
