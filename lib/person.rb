class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
:weight, :handed, :complexion, :t_shirt_size,
:wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes) #accepts attributes hash as an argument
    attributes.each {|key, value| self.send(("#{key}="), value)} #send allows us to use a dynamic value for the key
  end

end

# susan_attributes = {name: "Susan", height: "5'11\"", eye_color: "Green"}
#
# susan = Person.new(susan_attributes)
# susan.name      # => "Susan"
# susan.height    # => "5'11""
# susan.eye_color # => "Green"
