

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

def list(songs)
songs.each_with_index do |song, index|
  puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input=gets.chomp
  if (1..9).to_a.include?(user_input.to_i)
    puts "Playing #{songs[user_input.to_i-1]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts  "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  command= ""
  while command
  puts "Please enter a command:"
  command = gets.chomp
  case command
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    list(songs)
    play(songs)
  when "exit"
    exit_jukebox
    break
    end
  end
end
