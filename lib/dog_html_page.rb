class DogHTMLPage

  def initialize(dog)

    @dogs = dog

  end

  def title
    num_dogs = @dogs.length
    num_dogs = "no" if @dogs.length == 0
    "<h1>There are #{num_dogs} dogs</h1>"
  end

  def list
    dog_string = ""
    @dogs.each do |dog|
      dog_string << "<li>#{dog[:name]}</li>"
    end
    if dog_string != ""
      "<ul>#{dog_string}</ul>"
    else
      dog_string
    end
  end


end