
module ResistorColorDuo
  VALUE = {
    "black" => 0,
    "brown" => 1,
    "red" => 2,
    "orange" => 3,
    "yellow" => 4,
    "green" => 5,
    "blue" => 6,
    "violet" => 7,
    "grey" => 8,
    "white" => 9,
  }

  def self.value(color_array)
    (VALUE[color_array.first] * 10) + VALUE[color_array[1]]
  end
end
