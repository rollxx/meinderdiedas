json.array!(@sentences) do |sentence|
  json.extract! sentence, :id, :text
  json.url sentence_url(sentence, format: :json)
end
