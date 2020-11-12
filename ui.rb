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
    end

    def get_user_choice
        puts "please choose 2 items from above"
    end

    def calculate_totals
    end

    def display_user_choice
    end





end