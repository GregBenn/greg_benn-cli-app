class CatFinder::Scraper

  def get_page
    doc = Nokogiri::HTML(open("http://ws.petango.com/webservices/adoptablesearch/wsAdoptableAnimals.aspx?species=Cat&sex=A&agegroup=All&location=&site=1916&onhold=A&orderby=Random&colnum=3&css=http://ws.petango.com/WebServices/adoptablesearch/css/styles.css&authkey=kp01e3cc76dlg4k02psducr8vjkdntd65bb18is2x46w5usyg0&recAmount=150&detailsInPopup=No&featuredPet=Include&stageID=2"))
  end

  def scrape_cats
    get_page.css("div.list-animal-info-block").each do |c|
      new_cat = CatFinder::Cat.new(
        name: c.css("div.list-animal-name").text,
        type: c.css("div.list-animal-breed").text,
        age: c.css("div.list-animal-age").text,
        gender: c.css("div.list-animal-sexSN").text,)
      binding.pry
    end
  end
end
