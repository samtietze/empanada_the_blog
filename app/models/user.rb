class User < ApplicationRecord
  has_many :entries, foreign_key: "author_id"

  has_secure_password

end