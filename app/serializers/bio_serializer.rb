class BioSerializer < ActiveModel::Serializer
  attributes :id, :typeOfPrompt, :snippets
end
