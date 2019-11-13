# Add your code here

require 'pry'
require 'pp'

def help
  puts("/I accept the following commands:/")
  puts("/- help : displays this help message/")
  puts("/- list : displays a list of songs you can play/")
  puts("/- play : lets you choose a song to play/")
  puts("/- exit : exits this program/")
end

def play(songs)

  puts("/Please enter a song name or number:/")
  song_identity = gets.chomp

  #binding.pry
  if song_identity.to_i

    if song_identity == "1"
      puts songs[0]
      songs[0]
    elsif song_identity == "2"
      puts songs[1]
      songs[1]
    elsif song_identity == "3"
      puts songs[2]
      songs[2]
    elsif song_identity == "4"
      puts songs[3]
      songs[3]
    elsif song_identity == "5"
      puts songs[4]
      songs[4]
    elsif song_identity == "6"
      puts songs[5]
      songs[5]
    elsif song_identity == "7"
      puts songs[6]
      songs[6]
    elsif song_identity == "8"
      puts songs[7]
      songs[7]
    elsif song_identity == "9"
      puts songs[8]
      songs[8]
    end

  end

  track_number = 0

  until track_number == songs.length do

    if song_identity == songs[track_number]
      puts songs[track_number]
      songs[track_number]
    end

    track_number += 1

  end

  if songs.include?(song_identity) == false || song_identity.to_i > songs.length
    puts("Invalid input, please try again")
  end

  #binding.pry

end

def list(songs)

 song_number = 0

  until song_number == songs.length do
    puts("#{song_number+1}. #{songs[song_number]}")
    song_number += 1
  end

end

def exit_jukebox

  puts("Goodbye")

end

def run(songs)

 puts("Please enter a command:")
 user_input = gets.chomp

 #while user_input != "exit" do

   if user_input == "help"
     help

   end

   if user_input == "list"
     list(songs)
   end

   if user_input == "play"
     puts "Playing #{play(songs)}"

   end

   user_input = gets.strip

 #end

 #exit_jukebox

 #binding.pry
end
