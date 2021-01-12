begin
  ImageCreate.call({:title=>"Business people", :caption=>"Group of business people", :image_url=>"https://cdn.stocksnap.io/img-thumbs/960w/business-people_IDYMLGDH3I.jpg"})
  ImageCreate.call({:title=>"Self care at home", :caption=>"Woman doing self care", :image_url=>"https://cdn.stocksnap.io/img-thumbs/960w/wellness-cosmetics_QGRV9ZQ8U6.jpg"})
  ImageCreate.call({:title=>"Doctor's appointment", :caption=>"Senior man in wheelchair at the doctor's office.", :image_url=>"https://cdn.stocksnap.io/img-thumbs/960w/senior-doctor_TMNVHGYBTL.jpg"})
  ImageCreate.call({:title=>"Biking around town", :caption=>"Woman in black dress biking around the city.", :image_url=>"https://cdn.stocksnap.io/img-thumbs/960w/city-woman_6OQINKDPSR.jpg"})
  ImageCreate.call({:title=>"Tour de France race", :caption=>"Bikers competing in the Tour de France 2018 race (midway point)", :image_url=>"https://cdn.stocksnap.io/img-thumbs/960w/people-men_SNIKX3KGKD.jpg"})
  ImageCreate.call({:title=>"Dog on a lawn", :caption=>"White dog on my lawn.", :image_url=>"https://cdn.stocksnap.io/img-thumbs/960w/animal-dog_A8BVVUSQWF.jpg"})
  ImageCreate.call({:title=>"Closeup of cat", :caption=>"Orange tabby cat closeup shot", :image_url=>"https://cdn.stocksnap.io/img-thumbs/960w/cat-pet_XHBLQZQP6J.jpg"})
  ImageCreate.call({:title=>"Vegetables galore", :caption=>"Vegetables and fruits at the supermarket", :image_url=>"https://cdn.stocksnap.io/img-thumbs/960w/food-fruits_AWJD4WV6W1.jpg"})
rescue => error
  puts error.message
else
  puts "Seeded 8 images successfully"
end
