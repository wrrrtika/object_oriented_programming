
require_relative './contact.rb'
require_relative './rolodex.rb'

class CRM
  attr_reader :name

  def initialize(name)
    @name = name
    @rolodex = Rolodex.new
  end

  def print_main_menu
    puts "[1] Add a contact"
    puts "[2] Modify a contact"
    puts "[3] Display all contacts"
    puts "[4] Display one contact"
    puts "[5] Display an attribute"
    puts "[6] Delete a contact"
    puts "[7] Exit"
    puts "Enter a number:"
  end

  def main_menu
    puts "Welcome to #{@name}"

    while true
      print_main_menu
      input = gets.chomp.to_i
      return if input == 7
      choose_option(input)
    end
  end

  def choose_option(option)
    case option
    when 1 then add_contact
    when 2 then modify_contact
    when 3 then display_all_contacts
    when 4 then display_contact
    when 5 then display_attribute
    when 6 then delete_contact
    else
      puts "Invalid option. Try again!"
      return
    end
  end

  def add_contact
    print "First Name: "
    first_name = gets.chomp
    print "Last Name: "
    last_name = gets.chomp
    print "Email: "
    email = gets.chomp
    print "Note: "
    note = gets.chomp

    contact = Contact.new(first_name, last_name, email, note)
    @rolodex.add_contact(contact)
  end

  def display_all_contacts
    @rolodex.contacts.each do |contact|
      puts "#{contact.id} #{contact.first_name} #{contact.last_name}: <#{contact.email}>"
  end
    
  def display_contact
  	puts "Choose an ID you wish to view."
  		@rolodex.contacts.each do |contact|
		puts "#{contact.id}#{contact.last_name}, #{contact.first_name}"	
  		contact_to_display = gets.chomp
  			if contact_to_display == contact.id
  			puts "#{contact.id} #{contact.first_name} #{contact.last_name}: <#{contact.email}>"

  		end
  end  	

  end
 end   
end

crm = CRM.new("Bitmaker Labs CRM")
crm.main_menu
