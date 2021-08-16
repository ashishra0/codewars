class Code
  @color_registry = {}

  attr_accessor :color_registry

  def self.method_missing(name, *args)
    name = name.to_s
    name = name.gsub!(/\W/,'') if name.include?("=")

    raise NoMethodError if !@color_registry.keys.include?(name) && args.empty?

    if @color_registry.has_key?(name)
      return @color_registry[name]
    else
      @color_registry[name] = args[0]
    end

    @color_registry[name]
  end

end
