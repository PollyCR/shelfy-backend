class EntrySerializer < ActiveModel::Serializer
  attributes :id, :diary_id, :routine_type, :content, :created_at, :skin_score
  belongs_to :diary
end
