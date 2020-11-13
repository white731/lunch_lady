class Ui

    def initialize (menu)
        @menu = menu
    end

    def print_menu
        puts ""
        puts "Welcome to Landon's Kitchen! You're going to love our food!"
        puts "Landon's Kitchen Menu"
        puts "~~~~~~~~~~~~~~~~~~~~~~"
        @menu.each_with_index do |menu_item, index|
           puts menu_items =  "#{index+1}) #{menu_item[:menu_item]}"
        end
        self.get_user_choice_1
    end

    def get_user_choice_1
        puts "please choose 2 items from above"
        user_input1 = gets.strip
        user_input_validation_1(user_input1)
    end

    def user_input_validation_1(input)
        #tests whether the users input was valid
        is_integer = input.to_i

        if is_integer >= 1 && is_integer <= @menu.size 
            puts "Option #{is_integer}) #{@menu[is_integer-1][:menu_item]}"
            @user_input1 = input.to_i
            get_user_choice_2
            
            
        else
            puts "Please only enter a number between 1 and #{@menu.size}"
            self.get_user_choice_1
        end

        # rescue ArgumentError
        #     puts "You've entered an invalid choice. Please only enter a number between 1 and #{@menu.size}"
        #     self.get_user_choice_1
    end


    def get_user_choice_2
        puts "Choose one more"
        user_input2 = gets.strip
        user_input_validation_2(user_input2)
    end

    
    def user_input_validation_2(input)
        #tests whether the users input was valid
        is_integer = input.to_i

        if is_integer >= 1 && is_integer <= @menu.size 
            puts "Option #{is_integer}) #{@menu[is_integer-1][:menu_item]}"
            @user_input2 = input.to_i
            self.display_user_choice
            
            
        else
            puts "Please only enter a number between 1 and #{@menu.size}"
            self.get_user_choice_2

        end

        # rescue ArgumentError
        #     puts "You've entered an invalid choice. Please only enter a number between 1 and #{@menu.size}"
        #     self.get_user_choice_1
    end

    def display_user_choice
     puts "hello"
     puts "#{@user_input1}) #{@menu[1-@user_input1][:menu_item]} Price: #{@menu[1-@user_input1][:price]}"
     puts "#{@user_input2}) #{@menu[1-@user_input2][:menu_item]} Price: #{@menu[1-@user_input2][:price]}"

     puts "Total is Price: #{@menu[1-@user_input1][:price] + @menu[1-@user_input2][:price]}"
    end

end