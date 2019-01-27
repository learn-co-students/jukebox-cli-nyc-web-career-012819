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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(array)
  array.each.with_index(1) do |val,index|
    puts "#{index}. #{val}"
  end
end

def play(songs)
  puts "Please enter a song name or number"
  input = gets.chomp
  songs.each.with_index(1) do |song, idx|
    if input.to_i == (idx) || input == song
      puts "Playing #{song}"
      break
    end 
   end
   if input.to_i > songs.length
   puts "Invalid input, please try again"
   elsif songs.include?(input) != true
   puts "Invalid input, please try again"
 end
end
    
def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  input = ''
  while input != "exit"
  puts "Please enter a command:"
  input = gets.chomp
  if input == "list"
    list(array)
    elsif input == "help"
    help
    elsif input == "play"
    play(array)
    elsif input == "exit"
    exit_jukebox
    break
  end
end
end