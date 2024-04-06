# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "deleting books"
Book.destroy_all
# Seed data for user IDs 1 and 2
user_ids = [1, 2]

# Define book data
book_data = [
  {
    title: "To Kill a Mockingbird",
    author: "Harper Lee",
    description: "A gripping portrayal of racial injustice and human morality.",
    genre: "Fiction",
    rating: 4,
    language: "English"
  },
  {
    title: "1984",
    author: "George Orwell",
    description: "A dystopian novel that explores the consequences of totalitarianism, surveillance, and government oppression.",
    genre: "Science Fiction",
    rating: 5,
    language: "English"
  },
  {
    title: "Pride and Prejudice",
    author: "Jane Austen",
    description: "A classic romance novel that examines social class, marriage, and gender roles in 19th-century England.",
    genre: "Romance",
    rating: 4,
    language: "English"
  },
  {
    title: "The Great Gatsby",
    author: "F. Scott Fitzgerald",
    description: "A tragic love story set in the roaring twenties, exploring themes of wealth, love, and the American Dream.",
    genre: "Fiction",
    rating: 4,
    language: "English"
  },
  {
    title: "To the Lighthouse",
    author: "Virginia Woolf",
    description: "A modernist novel that follows the Ramsay family's visits to the Isle of Skye and their internal thoughts and experiences.",
    genre: "Fiction",
    rating: 4,
    language: "English"
  }
]
puts "creating books"
# Create 10 books (5 for each user)
10.times do |i|
  user_id = user_ids[i % 2] # Alternate between user IDs 1 and 2
  book_info = book_data[i % 5] # Cycle through the book data
  Book.create!(
    user_id: user_id,
    title: book_info[:title],
    author: book_info[:author],
    description: book_info[:description],
    genre: book_info[:genre],
    rating: book_info[:rating],
    language: book_info[:language]
  )
end
