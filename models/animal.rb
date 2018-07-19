class Animal
  attr_accessor :name
  attr_accessor :description

  def initialize(name:, description:)
    @name = name
    @description = description
  end

  def print_info(class_name)
    "#{class_name.to_s} #{name} #{description.downcase}"
  end
end