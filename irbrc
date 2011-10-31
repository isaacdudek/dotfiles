IRB.conf[:PROMPT_MODE] = :SIMPLE

begin
  require 'wirb'

  Wirb.start

  Wirb.schema = {
    # Array
    open_array: nil,
    comma: nil,
    close_array: nil,

    # Class & Object
    class: :yellow,
    class_separator: :brown,
    open_object: :brown,
    object_class: :yellow,
    object_description_prefix: :brown,
    object_description: nil,
    object_address: :dark_gray,
    object_line_prefix: nil,
    object_line: nil,
    object_line_number: nil,
    object_variable_prefix: :purple,
    object_variable: :light_purple,
    close_object: :brown,

    # Hash
    open_hash: nil,
    refers: nil,
    close_hash: nil,

    # Miscellaneous
    default: nil,
    keyword: nil,
    gem_requirement_condition: nil,
    gem_requirement_version: nil,

    # Number
    number: :light_blue,
    range: :blue,
    open_rational: nil,
    rational_separator: nil,
    close_rational: nil,

    # Regexp
    open_regexp: :red,
    regexp: :light_red,
    close_regexp: :red,
    regexp_flags: :red,

    # Set
    open_set: nil,
    close_set: nil,

    # String
    open_string: :green,
    string: :light_green,
    close_string: :green,

    # Symbol
    symbol_prefix: :cyan,
    symbol: :light_cyan,
    open_symbol_string: :cyan,
    symbol_string: :light_cyan,
    close_symbol_string: :cyan,

    # Time
    time: :light_blue,

    # True, False, & Nil
    true: :light_green,
    false: :light_red,
    nil: :light_red
  }
rescue LoadError => e
  puts "Couldn't load Wirb: #{e}"
end

begin
  require 'hirb'

  extend Hirb::Console

  Hirb.enable pager: false
rescue LoadError => e
  puts "Couldn't load Hirb: #{e}"
end
