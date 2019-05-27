class Person

  attributes = { 
    name: "Bob", birthday: "01/29/1984" , hair_color: "brown", eye_color: "brown", height: "short", 
    weight: "good", handed: "left", complexion: "tan", t_shirt_size: "m", 
    wrist_size: "m", glove_size: "m", pant_length: "34", pant_width: "32"
  }

  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, 
  :weight, :handed, :complexion, :t_shirt_size, 
  :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end
  
end