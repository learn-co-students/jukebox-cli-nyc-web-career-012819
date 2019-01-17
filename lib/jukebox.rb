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

# help, play, list, exit

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, i| puts "#{i + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  
  if songs.include?(user_input)
    puts "Playing #{songs}"
    
  elsif user_input.to_i > 0 && user_input.to_i <= songs.count
    puts "Playing #{songs[user_input.to_i - 1]}"
    
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  userInput = gets.chomp
  
  if userInput == "list"
    list(songs)
    run(songs)
   elsif userInput == "help"
      help
      run(songs)
   elsif userInput == "play"
      play(songs)
      run(songs)
   elsif userInput == "exit"
      exit_jukebox
  end
end