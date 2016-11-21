class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author_id
  belongs_to :author
end
