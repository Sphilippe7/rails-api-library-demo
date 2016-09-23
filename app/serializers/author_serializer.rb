class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname
  has_many :books
end
