# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # db/seeds.rb

# Create libraries
library1 = Library.create(name: 'Central Library')
library2 = Library.create(name: 'Community Library')
library3 = Library.create(name: 'University Library')

# Create users
user1 = User.create(name: 'John Doe')
user2 = User.create(name: 'Jane Smith')
user3 = User.create(name: 'Michael Johnson')
user4 = User.create(name: 'Emily Brown')

# Create books
book1 = Book.create(title: 'The Great Gatsby', status: 'available', library: library1, user: nil)
book2 = Book.create(title: 'To Kill a Mockingbird', status: 'checked_out', library: library1, user: user1)
book3 = Book.create(title: 'Pride and Prejudice', status: 'available', library: library2, user: nil)
book4 = Book.create(title: '1984', status: 'checked_out', library: library2, user: user2)
book5 = Book.create(title: 'Harry Potter and the Sorcerer\'s Stone', status: 'available', library: library3, user: nil)
book6 = Book.create(title: 'The Catcher in the Rye', status: 'available', library: library3, user: nil)

# Create more books
book7 = Book.create(title: 'Lord of the Rings', status: 'available', library: library1, user: nil)
book8 = Book.create(title: 'Moby-Dick', status: 'checked_out', library: library1, user: user2)
book9 = Book.create(title: 'Jane Eyre', status: 'available', library: library2, user: nil)
book10 = Book.create(title: 'The Odyssey', status: 'checked_out', library: library2, user: user1)
book11 = Book.create(title: 'War and Peace', status: 'available', library: library3, user: nil)
book12 = Book.create(title: 'Don Quixote', status: 'available', library: library3, user: nil)
# ... add more books similarly

# Assign some random books to users and libraries
book13 = Book.create(title: 'Brave New World', status: 'checked_out', library: library1, user: user3)
book14 = Book.create(title: 'The Picture of Dorian Gray', status: 'checked_out', library: library1, user: user4)
book15 = Book.create(title: 'Frankenstein', status: 'checked_out', library: library2, user: user3)
book16 = Book.create(title: 'The Adventures of Tom Sawyer', status: 'checked_out', library: library2, user: user4)
book17 = Book.create(title: 'Dracula', status: 'checked_out', library: library3, user: user1)
book18 = Book.create(title: 'The Call of the Wild', status: 'checked_out', library: library3, user: user2)
# ... add more books similarly

# You can continue to add more books as needed
