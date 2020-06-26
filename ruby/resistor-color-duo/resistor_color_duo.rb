
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
    val_array = color_array.slice(0..1).map { |color| value[color] }
    val_array.join.to_i
  end
end
