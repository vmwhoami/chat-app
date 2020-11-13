
User.create!( username: "vmwhoami", password: "password",email:"vmwhoami@gmail.com")
User.create!( username: "adam", password: "password",email:"adam@gmail.com")
User.create!( username: "olenika", password: "password",email:"olenika@gmail.com")

puts "---"*100
puts "Users created"
@users = User.all

messages = [
  "Hey guys how are you doing",
  "Let's discuss something cool",
  "Lorem ipsum dolor sit amet consectetur adipisicing elit.",
  "Aliquid similique recusandae commodi.",
  "Illum, voluptas consequuntur sed aspernatur doloremque beatae facere dolor aperiam nobis",
  " fuga atque ducimus debitis a, nemo vitae!"
]

5.times do |m|
  Message.create!(
     body: messages[m] ,
      user: @users.sample
  )
end
puts "---"*100
puts "Messages created"