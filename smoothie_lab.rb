# Instructions are written inline.
 
# docs you may enjoy
# http://www.ruby-doc.org/core-2.0/Hash.html
# http://ruby-doc.org/core-2.0/String.html
# http://ruby-doc.org/core-2.0/Array.html
 
# Every Morning I make a smoothie with the follow ingredients:
smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}
 
# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!
  
# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array



=begin
  - grab the keys (ingredients) from the hash... hash.key(value) or hash.keys
  - join them all into a string... .join
  - then split it character by character into an array... .split("")
  - then randomize this array... .shuffle
  - join it again... .join
  - don't forget to delete occurances of spaces... .delete(" ")
  - save this variable... now_blended
  - create blender class
  - write a prompt to turn on the blender
  - write a if else or until loop
  - Time to find out... Does it blend??
=end


class Blender

  def initialize(smoothie_ingredients)
    @smoothie_ingredients = smoothie_ingredients
  end

  def blend(smoothie_ingredients)
    ingredients = smoothie_ingredients.keys
    now_blended = ingredients.join.split("").shuffle.join.delete(" ")
    return now_blended
    
  end

  def turn_on
    smoothie_ingredients = @smoothie_ingredients
    ingredients = smoothie_ingredients.keys
    puts "Do you want to turn the blender on?  Your contents are #{ingredients}. (Y/N)"
    res = gets.chomp
    if res == "Y" || res == "y"
      puts "Here's your blended smoothie:"
      puts blend(smoothie_ingredients)
    else
      puts "The blender is off!"
    end
  end
end

mix_up = Blender.new(smoothie_ingredients)
mix_up.turn_on


