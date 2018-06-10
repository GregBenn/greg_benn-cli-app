class CatFinder::Cat
  attr_accessor :name, :type, :age, :gender, :url

  def self.today
    # Scrape petfinder.com and return cats based on that data

    cat_1 = self.new
    cat_1.name = "Marshmellow"
    cat_1.type = "Domestic Short Hair"
    cat_1.age = "Adult"
    cat_1.gender = "Female"
    cat_1.url = "https://www.petfinder.com/cat/cleopatra-41849425/ma/boston/animal-rescue-league-of-boston-ma13/"

    cat_2 = self.new
    cat_2.name = "Luna"
    cat_2.type = "Domestic Short Hair"
    cat_2.age = "Kitten"
    cat_2.gender = "Female"
    cat_2.url = "https://www.petfinder.com/cat/cleopatra-41849425/ma/boston/animal-rescue-league-of-boston-ma13/"

    cat_3 = self.new
    cat_3.name = "Rambo"
    cat_3.type = "Domestic Short Hair"
    cat_3.age = "Kitten"
    cat_3.gender = "Male"
    cat_3.url = "https://www.petfinder.com/cat/cleopatra-41849425/ma/boston/animal-rescue-league-of-boston-ma13/"

    cat_4 = self.new
    cat_4.name = "Kirby"
    cat_4.type = "Domestic Short Hair"
    cat_4.age = "Adult"
    cat_4.gender = "Male"
    cat_4.url = "https://www.petfinder.com/cat/cleopatra-41849425/ma/boston/animal-rescue-league-of-boston-ma13/"

    cat_5 = self.new
    cat_5.name = "Dory"
    cat_5.type = "Domestic Short Hair"
    cat_5.age = "Kitten"
    cat_5.gender = "Female"
    cat_5.url = "https://www.petfinder.com/cat/cleopatra-41849425/ma/boston/animal-rescue-league-of-boston-ma13/"

    [cat_1, cat_2, cat_3, cat_4, cat_5]
  end
end
