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
  puts "- play : lets you chose a song to play"
  puts "exit: exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  user_pick = gets.chomp
  if (1..songs.size).include?(user_pick.to_i)
    puts "Playing #{songs[user_pick.to_i-1]}"
  elsif songs.include?(user_pick)
    puts "Playing #{user_pick}"
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
  user_input = gets.chomp
  case
  if user_input = "list"
    list(songs)
  elsif user_input = "play"
    play(songs)
  elsif user_input = "exit"
    exit_jukebox
  end
end
