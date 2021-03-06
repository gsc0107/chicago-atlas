class CategoryGroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :slug
  attributes :sub_categories

  has_many :sub_categories do
    object.sub_categories.with_indicators
  end
end
