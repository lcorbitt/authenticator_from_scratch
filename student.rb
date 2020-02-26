class Student
    attr_accessor :first_name, :last_name, :email, :username, :password

    def initialize(first_name, last_name, email, username, password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = username
        @password = password
    end

    def to_s
        "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email}, Username: #{@username}" 
    end
end

lukas = Student.new("lukas", "corbitt", "test@example.com", "lcorbitt", "password")