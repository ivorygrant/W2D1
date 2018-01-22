# PHASE 2
def convert_to_int(str)

  Integer(str)
rescue ArgumentError
    return nil
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]
class NotFruitError < StandardError
  def message
    puts "This is not a fruit."
  end
end

class CoffeeError < StandardError
  def message
    puts "This is not a fruit, this is coffee. If you want to feed me again, you must give me coffee first!"
  end
end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeError
  else
    raise NotFruitError
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp

    reaction(maybe_fruit)

    rescue NotFruitError => notfruit
      puts notfruit.message

    rescue CoffeeError => coffee
      puts coffee.message
      retry
  end
end

class YearsKnownError < StandardError
  def message
    "BRUH we ain't no besties. I haven't known you for more than five years."
  end
end

class DescriptiveError < StandardError
  def message
    "You ain't entered nothin' foo'!!!!!"
  end
end
# PHASE 4
class BestFriend

  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    if @yrs_known < 5
      raise YearsKnownError
    else
      puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
    end
  rescue YearsKnownError => yearsknown
    puts yearsknown.message
  end

  def do_friendstuff
    if @fav_pastime.length <= 0
      raise DescriptiveError
    else
      puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
    end
  rescue DescriptiveError => de
    puts de.message
  end

  def give_friendship_bracelet
    if @name.length <= 0
      raise DescriptiveError
    else
      puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
    end
  rescue DescriptiveError => ded
    puts ded.message
  end
end
