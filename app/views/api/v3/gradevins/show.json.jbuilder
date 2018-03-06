json.code @code
json.message @message
json.wine @wines.each do |w|
  json.id w.id
  json.number w.number
  json.currprice w.currprice
  json.name w.category.alcohol.name
  json.asset w.category.asset
  json.leibie w.category.leibie
end
json.foreign @foreign.each do |w|
  json.id w.id
  json.number w.number
  json.currprice w.currprice
  json.name w.category.alcohol.name
  json.asset w.category.asset
  json.leibie w.category.leibie
end
json.spirits @spirits.each do |w|
  json.id w.id
  json.number w.number
  json.currprice w.currprice
  json.name w.category.alcohol.name
  json.asset w.category.asset
  json.leibie w.category.leibie
end
json.beers @beers.each do |w|
  json.id w.id
  json.number w.number
  json.currprice w.currprice
  json.name w.category.alcohol.name
  json.asset w.category.asset
  json.leibie w.category.leibie
end
