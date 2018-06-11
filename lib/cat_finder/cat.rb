class CatFinder::Cat
  attr_accessor :name, :type, :age, :gender, :url

  @@all = []

  def initialize(name:, type:, age:, gender:, url:)
    @name = name
    @type = type
    @age = age
    @gender = gender
    @@all << self
    @url = url
  end

  def self.all
    @@all
  end


end
