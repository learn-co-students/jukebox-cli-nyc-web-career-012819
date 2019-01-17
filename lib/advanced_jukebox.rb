#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '~/Desktop/Qodinq/Flatiron/labs/code-along-exercise/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '~/Desktop/Qodinq/Flatiron/labs/code-along-exercise/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '~/Desktop/Qodinq/Flatiron/labs/code-along-exercise/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '~/Desktop/Qodinq/Flatiron/labs/code-along-exercise/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => ~/Desktop/Qodinq/Flatiron/labs/code-along-exercise/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '~/Desktop/Qodinq/Flatiron/labs/code-along-exercise/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '~/Desktop/Qodinq/Flatiron/labs/code-along-exercise/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

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
  
  my_songs.each {|song, path| puts my_songs}
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
  puts "Please enter a song name only:"
  user_inputs = gets.strip
  
  if my_songs.keys.include?(user_inputs)
    system "open #{my_songs[user_inputs}"
   
  elsif user_inputs == 'list'
    list(my_songs)
    run(my_songs)
  
  else
    puts "Your choice is invalid, please enter again. If you need the list of songs, please enter 'list'."
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  
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
