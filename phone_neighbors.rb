def neighbors_of(phone_number)
  phone_neighbors = []
  neighboring_numbers = { 
    "1" => ["2", "4"],
    "2" => ["1", "3", "5"],
    "3" => ["2", "6"],
    "4" => ["1", "5", "7"],
    "5" => ["2", "4", "6", "8"],
    "6" => ["3", "5", "9"],
    "7" => ["4", "8"],
    "8" => ["0", "5", "7", "9"],
    "9" => ["6", "8"],
    "0" => ["8"],
  }
  
  phone_number.chars.each_with_index do |s, i|
    neighboring_numbers[s].each do |neighbor|
      copy = phone_number.dup
      copy[i] = neighbor
      phone_neighbors << copy
    end
  end

  phone_neighbors
end