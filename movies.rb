movies = {
  eternal_sunshine_of_the_spotless_mind: 5,
  coolio: 3
}

puts = "What would you like to do?"
puts   "(add) add a movie."
puts   "(update) update a movie."
puts   "(display) display all movies."
puts   "(delete) delete a movie."
choice = gets.chomp.downcase

case choice
when "add" 
  puts "Input movie title:"
  title = gets.chomp.downcase.to_sym
  puts "What is the rating from 1 to 5?"
  rating = gets.chomp.to_i
  if !movies[title]
    movies[title]= rating
    puts "Movie added!"
  end
when "update"
  puts "Which movie to update?"
  title = gets.chomp.downcase
  if movies[title] = nil
    puts "Error! movie does not exist!"
  else
    puts "What is the rating?"
    rating = gets.chomp.to_i
    movies[title] = rating
  end
  puts "Movie was updated!"
when "display"
  movies.each { |movie, rating| puts "#{movie}: #{rating}" } 
when "delete"
  puts "Which movie would you like to delete?"
  title = gets.chomp
  if movies[title] = nil
    puts "Error! movie does not exist!"
  else
    movies.delete title
  end
  puts "Movie deleted!"
else 
  puts "Error!"
end
