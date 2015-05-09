module Selectors
  PATHS = { 'the homepage' => '/' }

  SELECTORS = {
    'the header' => 'header'
  }

  def path_for(named_path)
    PATHS.each do |regex, value|
      return value if Regexp.new(regex).match(named_path)
    end
    return nil
  end

  def css_for(named_path)
    SELECTORS.each do |regex, value|
      return value if Regexp.new(regex).match(named_path)
    end
    return nil
  end

  def print_warning(named_element)
    puts """
    Unknown selector #{named_element}
    Please add:
    '#{named_element}' => 'something'
    """
  end

  def selector_for(named_element)
    path_for(named_element) ||
      css_for(named_element) ||
      print_warning(named_element) ||
      named_element
  end
end

World(Selectors)
