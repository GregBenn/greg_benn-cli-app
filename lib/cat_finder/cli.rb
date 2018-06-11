class CatFinder::CLI

  def call
    CatFinder::Scraper.new.scrape_cats
    clear_page
    puts "Welcome to Cat Finder"
    list_cats
    description
    thank_you
  end

  def list_cats
    puts "The following cats below are available for adoption:"
    @cats = CatFinder::Cat.all

    @cats.each.with_index(1) do |cat, i|
      puts "#{i}. #{cat.name}"
    end
  end

  def clear_page
    system "clear"
  end

  def description
    input = nil
    while input != "exit"
      puts "Type the number of the cat that you would like to see a description on, or list to list the cats again, or type exit."
      input = gets.strip.downcase
      input_int = input.to_i

      if input_int > 0 && input_int <= @cats.size
        the_cat = @cats[input_int - 1]

        # the_cat == instance of cat
        # use a new method for a new drop, giving the user the ability to choose what they want to see about the cat.

        cat_info(the_cat)
      elsif input == "list"
        list_cats
      elsif input_int > @cats.size
        puts "That is not a valid number"
      end
    end
  end

  def cat_info(cat)
    #cat.url
    #cat.display_info
    puts "#{cat.name} - #{cat.type} - #{cat.age} - #{cat.gender}"
  end

  def thank_you
    puts "Thank you for using Cat Finder.  See you next time!"
  end
end
