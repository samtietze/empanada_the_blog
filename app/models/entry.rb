class Entry < ApplicationRecord
  # validates stuff!
  belongs_to :author, class_name: "User"
end