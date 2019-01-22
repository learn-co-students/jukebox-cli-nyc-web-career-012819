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
  puts "- exit: exits this program"
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
  user_input = ""
  while user_input
    puts "Please enter a command:"
    user_input = gets.chomp
    case user_input
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
      else
        help
      end
  end
end
