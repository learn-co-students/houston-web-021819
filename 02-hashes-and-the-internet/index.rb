require 'rest-client'
require 'pry'
require 'json'

def user_input(message)
    puts message
    gets.chomp
end

def display_book(title, description, authors)
    puts "Title: #{title}"
    puts "Description: #{description}"
    puts "Authors: #{authors}"
    puts "======================================================"
end

def search_for(term)
    result = RestClient.get "https://www.googleapis.com/books/v1/volumes?q=#{term}"
    JSON.parse(result.body)
end


input = user_input "Enter a search Term:"
books = search_for(input)
binding.pry


books["items"].each do | book |
    book_volume = book["volumeInfo"]
    title = book_volume["title"]
    description = book_volume["description"]
    if book_volume["authors"] == nil
        authors = "None Available"
    else
        authors = book_volume["authors"].join(', ')
    end
    display_book(title, description, authors)
end

binding.pry
# if input != "monday"
#     puts "Error, expected monday, got #{input}"
# else
#     puts "Success!"
# end

