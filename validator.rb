=begin
Author: Kevin Austin
Username/Password Validator
=end

def check_rules(string,strName)
  if string.length<8
    print "Oops! ", strName," must be at least 8 characters long\n"
    return false
  end
 
  if ! /[A-Z]/.match(string)
    print "Oops! ", strName," must contain at least one uppercase character\n"
    return false
  end
 
  if ! /[a-z]/.match(string)
    print "Oops! ", strName," must contain at least one lowercase character\n"
    return false
  end
 
  if ! /[0-9]/.match(string)
    print "Oops! ", strName," must contain at least one numeric character\n"
    return false
  end
 
  if ! /^[A-Za-z0-9]+$/.match(string)
    print "Oops! ", strName," can only contain alphanumeric characters (no spaces or special characters)"
    return false
  end
  true
end
 
loop do
  print "\nABC Username/Password Validator\n"
  print "Please enter your Username: "
  username = gets.chomp
  print "Please enter your Password: "
  password = gets.chomp
 
  # Check rules for username
  if check_rules(username,"Username")
    # If passed, check rules for password
    if check_rules(password,"Password")
      # If passed, do one final check comparing password to username
      if password.include? username
        print "The Password cannot contain the Username\n"
      else
        # Combination is valid
        print "The Username/Password combination is valid!\n"
        puts "\nThank you for trying the ABC Username/Password Validator!\n"
        break
      end
    end
  end
end