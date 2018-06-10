class CatFinder::CLI

  def call
    clear_page
    puts "Welcome to Cat Finder"
    list_cats
    description
    thank_you
  end

  def list_cats
    puts "The following cats below are available for adoption:"
    @cats = CatFinder::Cat.today
    @cats.each.with_index(1) do |cat, i|
      puts "#{i}. #{cat.name} - #{cat.type} - #{cat.age} - #{cat.gender}"
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

      if input.to_i > 0
        the_cat = @cats[input.to_i - 1]
        puts "#{the_cat.name} - #{the_cat.type} - #{the_cat.age} - #{the_cat.gender}"
      elsif input == "list"
        list_cats
      # else
      #   puts "Please type list or exit"
      end
    end
  end

  # def more_cats
  #   puts "Would you to see more cats (y/n)"
  #   input = gets.strip.downcase
  #   if input == "y" || "yes"
  #     list_cats
  #   elsif input == "n" || "no" || "exit"
  #     thank_you
  #   # else
  #   #   puts "Would you to see more cats (y/n)"
  #   end
  # end

  def thank_you
    puts "Thank you for using Cat Finder.  See you next time!"
  end
end
