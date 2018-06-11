class CatFinder::Scraper

  def get_page
    Nokogiri::HTML(open("http://ws.petango.com/webservices/adoptablesearch/wsAdoptableAnimals.aspx?species=Cat&sex=A&agegroup=All&location=&site=1916&onhold=A&orderby=Random&colnum=3&css=http://ws.petango.com/WebServices/adoptablesearch/css/styles.css&authkey=kp01e3cc76dlg4k02psducr8vjkdntd65bb18is2x46w5usyg0&recAmount=150&detailsInPopup=No&featuredPet=Include&stageID=2"))
  end

  def scrape_cats
    get_page.css("div.list-animal-info-block").each do |nokogiri_cat|
      new_cat = CatFinder::Cat.new(
        name: nokogiri_cat.css("div.list-animal-name").text,
        type: nokogiri_cat.css("div.list-animal-breed").text,
        age: nokogiri_cat.css("div.list-animal-age").text,
        gender: nokogiri_cat.css("div.list-animal-sexSN").text,
        url: cat_url(nokogiri_cat)
      )
    end
  end

  def cat_url(cat)
    cat_id = cat.css("div.list-animal-id").text
    "http://ws.petango.com/webservices/adoptablesearch/wsAdoptableAnimalDetails.aspx?id=#{cat_id}&css=http://ws.petango.com/WebServices/adoptablesearch/css/styles.css"
  end

  # def scrape_selected_cat



  # end
end
