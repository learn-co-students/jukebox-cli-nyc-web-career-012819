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
    puts (index + 1).to_s + ". " + song
end
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  if answer == 1.to_s || answer == songs[0]
    puts "Playing " + songs[0]
  elsif answer == 2.to_s || answer == songs[1]
    puts "Playing " + songs[1]
  elsif answer == 3.to_s || answer == songs[2]
    puts "Playing " + songs[2]
  elsif answer == 4.to_s || answer == songs[3]
    puts "Playing " + songs[3]
  elsif answer == 5.to_s || answer == songs[4]
    puts "Playing " + songs[4]
  elsif answer == 6.to_s || answer == songs[5]
    puts "Playing " + songs[5]
  elsif answer == 7.to_s || answer == songs[6]
    puts "Playing " + songs[6]
  elsif answer == 8.to_s || answer == songs[7]
    puts "Playing " + songs[7]
  elsif answer == 9.to_s || answer == songs[8]
    puts "Playing " + songs[8]
  else
    puts "Invalid input, please try again"
  end

  
  def exit_jukebox
    puts "Goodbye"
  end
  
  def run(songs)
    loop do
    help
    puts "Please enter a command:"
    command = gets.chomp
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    elsif command == "exit"
      exit_jukebox
      break
    end
  end
end
end
