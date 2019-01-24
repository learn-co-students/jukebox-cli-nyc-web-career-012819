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

def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
songs.each_with_index do |song, index|
  puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_reply = gets.chomp # variable stores the user's reply
  if list(songs).to_a.include?(user_reply) # conditional verifying if method list, created on line 21 (converted to an array with .to_a) includes var of user_reply)
    puts "Playing #{user_reply}." # if line 31 is true, returns statement
    elsif puts "Invalid input, please try again." # if line 31 false, returns statement
  end
end

def exit_jukebox
  puts "Goodbye."
end

def run(songs) # give argument of songs array
  help # call help method
  puts "Please enter a command:" # puts out prompt
  input = gets.chomp #create var input to store user's reply
  while input != "exit" # use while statement to say while input is not equal to "exit"
    if input == "list" # call on list if input equal to "list"
      list(my_songs)
    elsif input == "play" # call on play if input equal to "list"
      play(my_songs)
    else input == "help" # call on help if input equal to "list"
      help
    end
  end

  exit_jukebox # call on exit_jukebox when out of loop
end
