@contacts = [
        {name: "Lee", email: "lee.klitzner@gmail.com", telephone: "858-882-7071"},
        {name: "Katie", email: "khaderlie3@gmail.com", telephone: "801-867-5309"},
        {name: "Conner", email: "cjacobs@gmail.com", telephone: "858-795-6785"}
            ]

def contact_list
  find_name
  find_email
  find_phone
end


def menu
  puts "What would you like to do?"
  puts "Press 1 to add your contact information"
  puts "Press 2 to view only contact names"
  puts "Press 3 to list all contact attributes"
  puts "Press 4 to delete user"
  # puts "Press 5 to edit"
  puts "Press 6 to quit"
  print "> "
return gets.strip.to_i
end

def create_contact
  puts "What is your name?"
  print "> "
    name = gets.strip
  puts "What is your email?"
  print "> "
    email = gets.strip
  puts "What is your telephone number?"
  print "> "
    telephone = gets.strip
      @contacts << {name: name, email: email, telephone: telephone}
  puts "You just added #{@contacts.last}"
end

def find_name
  @contacts.each do |profile| # How many functions are they?
    puts "*****"
    puts profile[:name]
  end
end

def find_email
  @contacts.each do |address|
    puts "*****"
    puts address[:email]
  end
end

def find_phone
  @contacts.each do |phone|
    puts "*****"
    puts phone[:telephone]
  end
end

case menu
  when 1
    puts "You chose 1"
        create_contact

  when 2
    puts "Here is everyone's name:"
      find_name

  when 3
      puts "Here is everyone in the contact list:"
        #new_contact = @contacts.map {|create_contact| create_contact.to_s } would I do this to show the original array?
      contact_list

    when 4
      def delete_name
          @contacts.delete_if { |dname| dname[:"name"] == @delete_user }
      end

       puts "Who do you want to delete?"
       @delete_user = gets.strip
       puts "Are you sure you want to delete #{@delete_user} [Y/N]"
       answer = gets.strip
         if answer == "Y"
            delete_name
            puts "Here are the remaining user's name:"
              @contacts.each do |profile| # How many functions are they?
            puts profile[:name]
          end
         else
           menu
       end
