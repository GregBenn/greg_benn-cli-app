class CatFinder::Cat
  attr_accessor :name, :type, :age, :gender

  @@all = []

  def initialize(name:, type:, age:, gender:)
    @name = name
    @type = type
    @age = age
    @gender = gender
    @@all << self
  end

  def self.all
    @@all
  end

  def cat_by_index(index)
    @@all[index]
  end

  # def self.today
  #   # Scrape petfinder.com and return cats based on that data
  #   CatFinder::CatScraper.new.cats

  #   # Stubbed data

  #   cat_1 = self.new
  #   cat_1.name = "Marshmellow"
  #   cat_1.type = "Domestic Short Hair"
  #   cat_1.age = "Adult"
  #   cat_1.gender = "Female"

  #   cat_2 = self.new
  #   cat_2.name = "Luna"
  #   cat_2.type = "Domestic Short Hair"
  #   cat_2.age = "Kitten"
  #   cat_2.gender = "Female"

  #   cat_3 = self.new
  #   cat_3.name = "Rambo"
  #   cat_3.type = "Domestic Short Hair"
  #   cat_3.age = "Kitten"
  #   cat_3.gender = "Male"

  #   cat_4 = self.new
  #   cat_4.name = "Kirby"
  #   cat_4.type = "Domestic Short Hair"
  #   cat_4.age = "Adult"
  #   cat_4.gender = "Male"

  #   cat_5 = self.new
  #   cat_5.name = "Dory"
  #   cat_5.type = "Domestic Short Hair"
  #   cat_5.age = "Kitten"
  #   cat_5.gender = "Female"

  #   [cat_1, cat_2, cat_3, cat_4, cat_5]
  # end

  # def self.scrape_cats
  #   cats = []

  #   cats << self.scrape_petfinder

  #   cats
  # end

  # def self.scrape_petfinder
  #   doc = Nokogiri::HTML(open("https://www.petfinder.com/search/cats-for-adoption/?sort%5B0%5D=recently_added"))
  #   name = doc.search("div.petCard-overlay a.petCard-overlay-link").text
  # end

end
