class Code
  @color_registry = {}

  attr_accessor :color_registry

  def self.method_missing(name, *args)
    name = name.to_s
    name = name.gsub!(/\W/, '') if name.include?('=')

    raise NoMethodError if !@color_registry.keys.include?(name) && args.empty?

    return @color_registry[name] if @color_registry.key?(name)

    @color_registry[name] = args[0]

    @color_registry[name]
  end
end
