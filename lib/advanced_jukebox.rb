#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
require "pry"

my_songs = {
"Go Go GO" => '/Users/dolma147/Development/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/dolma147/Development/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/dolma147/Development/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/dolma147/Development/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/dolma147/Development/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/dolma147/Development/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/dolma147/Development/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  songs_list = my_songs.keys
  songs_list.each do |song|
    puts "#{song}"
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  songs_list = my_songs.keys
  puts "Please enter a song name:"
  user_choice = gets.chomp
  if songs_list.include?(user_choice)
    filepath = my_songs[user_choice]
    puts "Playing #{user_choice}"
    system "open #{filepath}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  users_response = ""
  while users_response
    puts "Please enter a command:"
    users_response = gets.chomp
    if users_response == "list"
      list(my_songs)
    elsif users_response == "play"
      play(my_songs)
    elsif users_response == "help"
      help
    elsif users_response == "exit"
      exit_jukebox
      break
    end
  end
end
