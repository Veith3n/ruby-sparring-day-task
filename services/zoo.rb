require_relative '../models/animal'
require_relative '../models/alligator'
require_relative '../models/gorilla'
require_relative '../models/penguin'
require_relative '../models/otter'
require_relative '../models/lemur'

class Zoo
  def initialize
    @animal_list = []
  end

  def inventory
    array_index = 1
    array_size = @animal_list.size

    output = welcome_message(@animal_list)

    @animal_list = @animal_list.sort_by {|animal| animal.name}

    @animal_list.each do |animal|
      output = "#{output} #{animal.print_info(animal.class)}"
      if array_index < array_size
        array_index += 1
        if array_size == 2
          output = "#{output} and"
        else
          output = "#{output},"
        end
      end
    end
    goodbye_message(@animal_list, output)
  end

  def add_animals(animals)
    @animal_list.concat(animals)
  end

  private

  def welcome_message(animal_list)
    case animal_list.size
    when 0
      'Oh no! There are no animals in our ZOO!'
    when 1
      'There is only one animal in our ZOO!'
    when 2
      if animal_list.first.class == Gorilla && animal_list.last.class == Gorilla #czy tutaj mozna jakies contains zrobic
        'For now there are only 2 gorillas here!'
      else
        'For now there are only 2 animals here!'
      end
    when 4
      'For now there are only 4 animals here!'
    when 7
      'There are 7 animals in our ZOO!'
    when 10
      'Yayy! We have 10 residents now!'
    else
      'Welcome'
    end
  end

  def goodbye_message(animal_list, message)
    if animal_list.size == 10
      message + '. You need to visit us as soon as possible!'
    elsif !animal_list.empty?
      message + '. Hope you will enjoy your visit!'
    else
      message
    end
  end
end
