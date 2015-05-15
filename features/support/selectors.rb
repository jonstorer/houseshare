module Selectors
  SELECTORS = {
  }

  def path_for(named_path)
    case named_path
    when 'the homepage' then '/'
    end
  end

  def css_for(named_selector)
    case named_selector
    when 'the header' then 'header'
    when /the (.+) for a (.+) field/
      "[name='#{$2}[#{$1}]']"
    end
  end

  def print_warning(named_element)
    puts "Unknown selector #{named_element}"
    puts "Please add:"
    puts "'#{named_element}' => 'something'"
    puts ""
  end

  def selector_for(named_element)
    path_for(named_element) ||
      css_for(named_element) ||
      print_warning(named_element) ||
      named_element
  end
end

World(Selectors)
