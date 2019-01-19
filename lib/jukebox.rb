require 'pry'

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
puts 'I accept the following commands:'
puts '- help : displays this help message'
puts '- list : displays a list of songs you can play'
puts '- play : lets you choose a song to play'
puts '- exit : exits this program'
end

def list(songs)
  songs.each_with_index {|song_name, index| puts "#{index + 1}. #{song_name}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
    if songs.include?(song)
      puts "Playing #{song}"
    elsif ((song.to_i - 1) != nil and (song.to_i - 1) != -1 and (song.to_i - 1) < songs.length)
      puts "Playing #{songs[song.to_i - 1]}"
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
  command = gets.chomp
  while command != "exit"
    case command
    when "play"
      play(songs)
    when "list"
      list(songs)
    when "help"
      help()
    end
    puts "Please enter a command:"
    command = gets.chomp
  end
  exit_jukebox
end
