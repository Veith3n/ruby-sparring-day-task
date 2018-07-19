class Gorilla < Animal
  attr_accessor :origin

  def initialize (name:, description:, origin:)
    @name = name
    @description = description
    @origin = origin
  end

  def print_info(animal_class)
    str = description
    str[0] = str[0].downcase
    "#{animal_class.to_s} #{name} from #{origin} #{str}"
  end

end