class RaceSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :description,
             :city,
             :county,
             :country,
             :start_at
end