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
	puts "I accept the following commands:"
	puts "- help : displays this help message"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end

def play(songs)
	puts "Please enter a song name or number:"
	input = gets.chomp

	if input.to_i > 0 && input.to_i < songs.length
		puts "Playing #{songs[input.to_i-1]}"
	elsif songs.include? input
		puts "Playing #{input}"
	else
		puts "Invalid input, please try again"
	end
end

def list(songs)
	songs.each { |song| puts song }
end

def exit_jukebox
	puts "Goodbye"
end

def run(songs)
	help
	input = prompt_user

	while(input != "exit")
		case input
			when "help"
				help
			when "play"
				play(songs)
			when "list"
				list(song)
			when "exit"
				break
			else
				puts "Invalid input, please try again"
		end

		input = prompt_user
	end

	exit_jukebox
end

def prompt_user
	puts "Please enter a command:"
	input = gets.chomp
end