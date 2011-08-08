class Post
  include Mongoid::Document

  field :author
  field :author_email
  field :subject
  field :content
  field :id, type: Integer, default: -> {Post.count + 1}

  key :id

  mount_uploader :image, ImageUploader

  embedded_in :board, :inverse_of => :posts

  recursively_embeds_many
end
