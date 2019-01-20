require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index+1}: #{song}"}
end

def play(songs)
  song_ind = (1..songs.length).to_a
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
   if songs.include?(user_choice)
     puts "Playing #{user_choice}"
   elsif song_ind.include?(user_choice.to_i)
     puts "Playing #{songs[(user_choice.to_i - 1)]}"
   else songs.include?(user_choice) == false || song_ind.include?(user_choice.to_i) == false
     puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  users_response = ""
  while users_response
    puts "Please enter a command:"
    users_response = gets.chomp
    if users_response == "list"
      list(songs)
    elsif users_response == "play"
      play(songs)
    elsif users_response == "help"
      help
    elsif users_response == "exit"
      exit_jukebox
      break
    end
  end
end
