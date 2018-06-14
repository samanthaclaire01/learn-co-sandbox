class User 
  attr_accessor :username, :snap_story, :friend,:microphone, :camera
  
  def initialize(username,snap_story,friend,microphone,camera)
    @username=username
    @microphone=microphone
    @camera=camera 
    @snap_story=snap_story
    @friend=friend
   
  end 
end 


puts "whats your username"
answer_1=gets.chomp
puts "would you like to allow access your microphone?"
answer_2=gets.chomp.upcase
puts "would you like to allow access your location? "
answer_3=gets.chomp.upcase
puts "which story would you like to add this too? My story, or Our story?"
answer_4=gets.chomp 
puts "what friend is this snap going too?"
answer_5=gets.chomp

person = User.new("#{answer_1}","#{answer_2}","#{answer_3}","#{answer_4}", "#{answer_5}")
puts "welcome back to snap!"
puts person.username
if answer_2=="YES"
  puts "Thank you for accessing your microphone!"
else 
  puts "Dont forget to access your microphone later on."
end 
if answer_3 == "YES"
  puts "Thank you for accessing your location!"
else 
  "Dont forget to access your location on."
end 
puts "Your story has been added to #{answer_4}!"
puts "Your snap has been sent to #{answer_5}!"
