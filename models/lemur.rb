class Lemur < Animal
  def initialize(name:, kind:, description:)
    @kind = kind
    @name = name
    @description = description
  end

  def print_info(animal_class)
    "Lemur (kind: #{@kind}) #{@name} - #{@description.downcase}"
  end
end