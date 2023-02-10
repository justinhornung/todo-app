class Category < ApplicationRecord
  has_many :category_todos
  has_many :todos, through: :category_todos
end
