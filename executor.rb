require_relative 'ui.rb'

main_dish_menu = [
    {   
    menu_item:"Hot Dogs", 
    price: 1.50,
    description: 'delicious hot dogs!',
    nutri_info: {
                    carbs: 24,
                    fats: 45,
                    protein: 10,
                    calories: 150
                }
    },
    {   
    menu_item:"Pizza", 
    price: 2.50,
    description: 'Deep dish, delicious pizza!',
    nutri_info: {
                    carbs: 34,
                    fats: 23,
                    protein: 19,
                    calories: 250
                }
    },
    {   
    menu_item:"Steak", 
    price: 12.50,
    description: 'Deep dish, delicious pizza!',
    nutri_info: {
                    carbs: 34,
                    fats: 23,
                    protein: 40,
                    calories: 500
                }
    }
]

add_on_menu = [
    {   
    menu_item:"French Fries", 
    price: 2.00,
    description: 'Fresh cut from Idaho Potatoes!',
    nutri_info: {
                    carbs: 50,
                    fats: 34,
                    protein: 1,
                    calories: 300
                }
    },
    {   
    menu_item:"Salad", 
    price: 10.00,
    description: "If you're feeling health, eat this!",
    nutri_info: {
                    carbs: 0,
                    fats: 0,
                    protein: 0,
                    calories: 10
                }
    }
]



main_menu = Ui.new(main_dish_menu)
add_on_menu = Ui.new(add_on_menu)

main_menu.print_menu