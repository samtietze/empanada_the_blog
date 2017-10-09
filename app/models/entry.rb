class Entry < ApplicationRecord

  belongs_to :author, class_name: "User", optional: true

  validates :title, :body, { presence: true }
end