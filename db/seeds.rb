# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Experience.destroy_all
City.destroy_all
User.destroy_all
Category.destroy_all

category1 = Category.create(
  name: "Yoga Studios",
  ref: "yoga"
)
category1photo = URI.open("https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_yoga_-248-n_1_yydoiw.svg")
category1.photo.attach(io: category1photo, filename: 'icon1', content_type: 'image/svg')

category1.save
category2 = Category.create(
  name: "Co-working",
  ref: "cowork"
)
category2photo = URI.open("https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_shared_workspace_re_3gsu_gn2me7.svg")
category2.photo.attach(io: category2photo, filename: 'icon2', content_type: 'image/svg')

category2.save
category3 = Category.create(
  name: "Grocery Shops",
  ref: "grocery"
)
category3photo = URI.open("https://res.cloudinary.com/di2awrsge/image/upload/v1646665175/undraw_shopping_app_flsj_zstypw.svg")
category3.photo.attach(io: category3photo, filename: 'icon3', content_type: 'image/svg')

category3.save
category4 = Category.create(
  name: "Gyms",
  ref: "gyms"
)
category4photo = URI.open("https://res.cloudinary.com/di2awrsge/image/upload/v1646665146/undraw_personal_trainer_ote3_bapr18.svg")
category4.photo.attach(io: category4photo, filename: 'icon4', content_type: 'image/svg')

category4.save
category5 = Category.create(
  name: "Cafes",
  ref: "cafes"
)
category5photo = URI.open("https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_coffee_re_x35h_v8e28j.svg")
category5.photo.attach(io: category5photo, filename: 'icon5', content_type: 'image/svg')

category5.save

category6 = Category.create(
  name: "Co-living Spaces",
  ref: "coliving"
)
category6photo = URI.open("https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_building_re_xfcm_arfxpa.svg")
category6.photo.attach(io: category6photo, filename: 'icon6', content_type: 'image/svg')

category6.save
category7 = Category.create(
  name: "Nightlife",
  ref: "nightlife"
)
category7photo = URI.open("https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_wine_tasting_-30-vw_vxyh9r.svg")
category7.photo.attach(io: category7photo, filename: 'icon7', content_type: 'image/svg')

category7.save

category8 = Category.create(
  name: "Restaurants",
  ref: "restaurants"
)
category8photo = URI.open("https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_chef_cu-0-r_sa2zou.svg")
category8.photo.attach(io: category8photo, filename: 'icon8', content_type: 'image/svg')

category8.save
puts "Created #{Category.count} categories"

categories = Category.all

city1 = City.create!(
  name: "Lisbon",
  ref: "lisbon"
)
city2 = City.create!(
  name: "Porto",
  ref: "porto"
)

city3 = City.create!(
  name: "London",
  ref: "london"
)

city4 = City.create!(
  name: "Amsterdam",
  ref: "amsterdam"
)

city5 = City.create!(
  name: "Berlin",
  ref: "berlin"
)

city6 = City.create!(
  name: "Milan",
  ref: "milan"
)

city7 = City.create!(
  name: "Denver",
  ref: "denver"
)
puts "Created #{City.count} cities"

cities = City.all
User.create!(
  username: "Pedro", email: "pedro@lewagon.com",
  password: "12345678",
  biography: "I was born in London and moved to Tokyo, Japan when I was in elementary school. I’m 27, and am currently travelling around Europe,
  working remotely as a web developer. I’m also starting a new video series Coding Demystified to inspire more people to code!"
)
puts "Created #{User.count} users"

nola = Experience.create!(
  city: city2,
  category: category8,
  name: "Nola Kitchen", address: "Praça Dona Filipa de Lencastre Nº25, 4050-259 Porto",
  description: "NOLA — stands for No Labels — is a new kitchen concept where real food comes first and people are united by a common belief: that real, healthy and tasty food makes us both healthier and happier.",
  website_url: "https://www.nola.com.en"
)

nphoto1 = URI.open("https://nola.com.pt/wp-content/uploads/2020/04/NOLA-SOBRE03.jpg")
nphoto2 = URI.open("https://res.cloudinary.com/di2awrsge/image/upload/v1646308362/NOLA-2_hjnbb8.png")
nphoto3 = URI.open("https://res.cloudinary.com/di2awrsge/image/upload/v1646308362/NOLA-3_ysebr9.png")
nphoto4 = URI.open("https://res.cloudinary.com/di2awrsge/image/upload/v1646308364/NOLA-4_e5rpxq.png")

nola.photos.attach(io: nphoto1, filename: 'NOLA-SOBRE03.jpg', content_type: 'image/jpg')
nola.photos.attach(io: nphoto2, filename: 'NOLA-2_hjnbb8.png', content_type: 'image/png')
nola.photos.attach(io: nphoto3, filename: 'NOLA-3_ysebr9.png', content_type: 'image/png')
nola.photos.attach(io: nphoto4, filename: 'NOLA-4_e5rpxq.png', content_type: 'image/png')

nola.save

manna = Experience.create!(
  city: city2,
  category: category8,
  name: "Manna", address: "Rua da Conceição 60, 4050-213 Porto",
  description: "Relaxed vegetarian cafe turning out smoothie bowls & vegan pancakes, plus coffee, beer & wine.",
  website_url: "https://www.mannaporto.com"
)

mannaphoto1 = URI.open("https://images.squarespace-cdn.com/content/v1/5cf383f1f561ca00012d40b8/1585218856326-WSVKGW4EDJIFJ94RIK6R/79602674_102693371201355_248650323086970836_n.jpg?format=2500w")
mannaphoto2 = URI.open("https://images.squarespace-cdn.com/content/v1/5cf383f1f561ca00012d40b8/1585218873482-UBEB1NVZCVIKVWFUJFZC/78972638_559175451582470_8430529983800365225_n.jpg?format=1000w")
mannaphoto3 = URI.open("https://images.squarespace-cdn.com/content/v1/5cf383f1f561ca00012d40b8/1585218865924-AUA2YEJKRGZMX4UTU373/75266945_416564795891392_8213882220683321327_n.jpg?format=1500w")

manna.photos.attach(io: mannaphoto1, filename: 'manna1', content_type: 'image/jpg')
manna.photos.attach(io: mannaphoto2, filename: 'manna2', content_type: 'image/jpg')
manna.photos.attach(io: mannaphoto3, filename: 'manna3', content_type: 'image/jpg')

manna.save

early = Experience.create!(
  city: city2,
  category: category8,
  name: "Early", address: "Praça Dona Filipa de Lencastre Nº25, 4050-259 Porto",
  description: "Patrícia and Emanuel, siblings, have come to give a breath of fresh air to the address of the old bookstore Contraste. On Rua dos Bragas, EARLY opens early and serves breakfast, brunch, lunch and snacks. The book-filled display was left behind but the idea that also resembles the world of reading is kept: life should be lived calmly, enjoyed with no rush and accompanied by a warm drink and a slice of homemade cake, just like a good book.",
  website_url: "https://crucreativehub.com/en/"
)

ephoto1 = URI.open("http://early.pt/images/LF_EARLY-109.JPG")
ephoto2 = URI.open("http://early.pt/images/LF_EARLY.jpg")
ephoto3 = URI.open("http://early.pt/images/LF_EARLY-78.JPG")

early.photos.attach(io: ephoto1, filename: 'LF_EARLY-109.JPG', content_type: 'image/jpg')
early.photos.attach(io: ephoto2, filename: 'LF_EARLY.jpg', content_type: 'image/jpg')
early.photos.attach(io: ephoto3, filename: 'LF_EARLY-78.JPG', content_type: 'image/jpg')

early.save

cru = Experience.create!(
  city: city2,
  category: category2,
  name: "Cru Creative Hub", address: "Rua do Rosário, 211, 4050-524 Porto, Portugal",
  description: "Patrícia and Emanuel, siblings, have come to give a breath of fresh air to the address of the old bookstore Contraste. On Rua dos Bragas, EARLY opens early and serves breakfast, brunch, lunch and snacks. The book-filled display was left behind but the idea that also resembles the world of reading is kept: life should be lived calmly, enjoyed with no rush and accompanied by a warm drink and a slice of homemade cake, just like a good book.",
  website_url: "https://crucreativehub.com/en/"
)

cphoto1 = URI.open("https://media.timeout.com/images/105816387/750/422/image.jpg")
cphoto2 = URI.open("https://creativeflip.creativehubs.net/wp-content/uploads/2020/11/17C936D6-1BCE-4518-8D73-E74BEB3F8171-CEECD708-7512-4A2F-8EA1-BD10F00BE07F-1200x675.jpg")
cphoto3 = URI.open("https://freight.cargo.site/t/original/i/d45e6f3078321d074742137da057134601696adfe3955162adefc695a51aabaf/Joao_Ferreira_CRUCreativeHub04.jpg")

cru.photos.attach(io: cphoto1, filename: 'image.jpg', content_type: 'image/jpg')
cru.photos.attach(io: cphoto2, filename: '17C936D6-1BCE-4518-8D73-E74BEB3F8171-CEECD708-7512-4A2F-8EA1-BD10F00BE07F-1200x675.jpg', content_type: 'image/jpg')
cru.photos.attach(io: cphoto3, filename: 'Joao_Ferreira_CRUCreativeHub04.jpg', content_type: 'image/jpg')

cru.save

selina = Experience.create!(
  city: city2,
  category: category2,
  name: "Selina Navi", address: "Rua Das Oliveiras nº 61, 4050-449 Porto, Portugal",
  description: "Get sh*t done at our urban coworking space in Porto, Portugal! Count on fast and reliable Wi-Fi, meeting rooms, and additional facilities to stay productive alongside a vibrant community of locals and nomads.",
  website_url: "https://www.selina.com/portugal/porto/"
)

sphoto1 = URI.open("https://coworker.imgix.net/photos/portugal/porto/selina-navis/2-1643203649.jpg?w=1200&h=0&q=90&auto=format,compress&fit=crop&mark=/template/img/wm_icon.png&markscale=5&markalign=center,middle")
sphoto2 = URI.open("https://coworker.imgix.net/photos/portugal/porto/selina-navis/1-1643203649.jpg?w=1200&h=0&q=90&auto=format,compress&fit=crop&mark=/template/img/wm_icon.png&markscale=5&markalign=center,middle")
sphoto3 = URI.open("https://coworker.imgix.net/photos/portugal/porto/selina-navis/6-1643203650.jpg?w=1200&h=0&q=90&auto=format,compress&fit=crop&mark=/template/img/wm_icon.png&markscale=5&markalign=center,middle")

selina.photos.attach(io: sphoto1, filename: 'selina1', content_type: 'image/jpg')
selina.photos.attach(io: sphoto2, filename: 'selina2', content_type: 'image/jpg')
selina.photos.attach(io: sphoto3, filename: 'selina3', content_type: 'image/jpg')

selina.save

io = Experience.create!(
  city: city2,
  category: category2,
  name: "Porto i/o Downtown", address: "R. de Cândido dos Reis 81, 4050-152 Porto",
  description: "We are Porto i/o, the biggest coworking spaces of our beautiful city and home for local tech and creative community since 2014.
  We are happy to make of our homes the beating heart of all things beautiful and digital in Porto, while always focusing on people.",
  website_url: "https://www.porto.io/"
)

iophoto1 = URI.open("https://porto.io/media/uploads/os6.png")
iophoto2 = URI.open("https://coworker.imgix.net/photos/portugal/matosinhos/porto-i-o-seaside/main-1573663084.png?w=1200&h=630&q=90&auto=format,compress&fit=crop&mark=/template/img/wm_icon.png&markscale=5&markalign=center,middle")

io.photos.attach(io: iophoto1, filename: 'io1', content_type: 'image/png')
io.photos.attach(io: iophoto2, filename: 'io2', content_type: 'image/png')

io.save

lotus = Experience.create!(
  city: city2,
  category: category1,
  name: "Lotus Yoga Studio", address: "Rua do Carvalho 102U Foz do Douro 4150-192 Porto, Portugal",
  description: "We believe there is something great and unique in every being.

  Our mission is to help you awaken this inner power.

  We are a Yoga Studio in Oporto, Portugal.",
  website_url: "https://lotus.pt/en/homepage/"
)

lotusphoto1 = URI.open("https://lotus.pt/wp-content/uploads/2021/07/lotus-7a-scaled.jpg")
lotusphoto2 = URI.open("https://media.timeout.com/images/105375372/image.jpg")

lotus.photos.attach(io: lotusphoto1, filename: 'lotus1', content_type: 'image/jpg')
lotus.photos.attach(io: lotusphoto2, filename: 'lotus2', content_type: 'image/jpg')

lotus.save

fly = Experience.create!(
  city: city2,
  category: category1,
  name: "Lotus Yoga Studio", address: "Rua de Santo Ildefonso 366, 1dt ft.
  4000-222 Porto
  Portugal",
  description: "My studio was made with the desire to create something new, something that was lacking in this city, a vision of a welcoming and modern space to bring together people who want to learn, evolve, and have a creative life. It's not just yoga and exercise that we're talking about here.",
  website_url: "https://www.studiofly.pt/"
)

flyphoto1 = URI.open("https://cdn.happeningnext.com/events10/banners/d92eea572b1f90fac0dd8500b6a64436d0a1add863a42ec26cc81499b1c3cdf9-rimg-w525-h350-gmir.jpg?v=1623991587")
flyphoto2 = URI.open("http://3.bp.blogspot.com/-GRR5q5tFnqE/VrILo5A9dbI/AAAAAAABq2M/vgwwN2gZZKA/s1600/IMG_3350.jpg")

fly.photos.attach(io: flyphoto1, filename: 'fly1', content_type: 'image/jpg')
fly.photos.attach(io: flyphoto2, filename: 'fly2', content_type: 'image/jpg')

fly.save

hotpod = Experience.create!(
  city: city2,
  category: category1,
  name: "Lotus Yoga Studio", address: "Av. Comendador Ferreira de Matos 688 Matosinhos, Porto, PT, 4450-121, PT",
  description: "We are Europes largest yoga business. Since 2013, over 100,000 people have immersed themselves in a Hotpod class at one of our 50+ locations around the world.
  We first landed in Porto in 2019.",
  website_url: "https://hotpodyoga.com/studios/porto/"
)

hotpodphoto1 = URI.open("https://cdn.hotpodyoga.com/app/uploads/2018/11/05143846/Inpod-Images-January-2020-Hero-Low-Res-004-960x540.jpg")
hotpodphoto2 = URI.open("https://cdn.hotpodyoga.com/app/uploads/2018/11/13133845/HPY_JULY_2020_Still39-960x540.jpg")

hotpod.photos.attach(io: hotpodphoto1, filename: 'pod1', content_type: 'image/jpg')
hotpod.photos.attach(io: hotpodphoto2, filename: 'pod2', content_type: 'image/jpg')

hotpod.save

latitudep = rand(41.14..41.17)
longitudep = rand(-8.69..-8.59)
latitudel = rand(38.69..38.80)
longitudel = rand(-9.30..-9.10)

5.times do
  latitudel = rand(38.69..38.80)
  longitudel = rand(-9.30..-9.10)
  yoga1 = Experience.create!(
    city: city1,
    category: category1,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudel, longitude: longitudel
  )

  yphoto1 = URI.open("https://images.unsplash.com/photo-1615657973599-990d6e05fb8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8eW9nYSUyMHN0dWRpb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  yphoto2 = URI.open("https://images.unsplash.com/photo-1588286840104-8957b019727f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8eW9nYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  yphoto3 = URI.open("https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8eW9nYSUyMHN0dWRpb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")

  yoga1.photos.attach(io: yphoto1, filename: 'yoga1', content_type: 'image/jpg')
  yoga1.photos.attach(io: yphoto2, filename: 'yoga2', content_type: 'image/jpg')
  yoga1.photos.attach(io: yphoto3, filename: 'yoga3', content_type: 'image/jpg')

  yoga1.save
end

5.times do
  latitudep = rand(41.14..41.17)
  longitudep = rand(-8.69..-8.59)
  yoga2 = Experience.create!(
    city: city2,
    category: category1,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudep, longitude: longitudep
  )

  yphoto1 = URI.open("https://images.unsplash.com/photo-1615657973599-990d6e05fb8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8eW9nYSUyMHN0dWRpb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  yphoto2 = URI.open("https://images.unsplash.com/photo-1588286840104-8957b019727f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8eW9nYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  yphoto3 = URI.open("https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8eW9nYSUyMHN0dWRpb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")

  yoga2.photos.attach(io: yphoto1, filename: 'yoga1', content_type: 'image/jpg')
  yoga2.photos.attach(io: yphoto2, filename: 'yoga2', content_type: 'image/jpg')
  yoga2.photos.attach(io: yphoto3, filename: 'yoga3', content_type: 'image/jpg')

  yoga2.save
end

5.times do
  latitudel = rand(38.69..38.80)
  longitudel = rand(-9.30..-9.10)
  cowork1 = Experience.create!(
    city: city1,
    category: category2,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudel, longitude: longitudel
  )

  cophoto1 = URI.open("https://images.unsplash.com/photo-1516062423079-7ca13cdc7f5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y28lMjB3b3JrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  cophoto2 = URI.open("https://images.unsplash.com/photo-1521737604893-d14cc237f11d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1784&q=80")
  cophoto3 = URI.open("https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y28lMjB3b3JrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")

  cowork1.photos.attach(io: cophoto1, filename: 'cowork1', content_type: 'image/jpg')
  cowork1.photos.attach(io: cophoto2, filename: 'cowork2', content_type: 'image/jpg')
  cowork1.photos.attach(io: cophoto3, filename: 'cowork3', content_type: 'image/jpg')

  cowork1.save
end

5.times do
  latitudep = rand(41.14..41.17)
  longitudep = rand(-8.69..-8.59)
  cowork2 = Experience.create!(
    city: city2,
    category: category2,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudep, longitude: longitudep
  )

  cophoto1 = URI.open("https://images.unsplash.com/photo-1516062423079-7ca13cdc7f5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y28lMjB3b3JrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  cophoto2 = URI.open("https://images.unsplash.com/photo-1521737604893-d14cc237f11d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1784&q=80")
  cophoto3 = URI.open("https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y28lMjB3b3JrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")

  cowork2.photos.attach(io: cophoto1, filename: 'cowork1', content_type: 'image/jpg')
  cowork2.photos.attach(io: cophoto2, filename: 'cowork2', content_type: 'image/jpg')
  cowork2.photos.attach(io: cophoto3, filename: 'cowork3', content_type: 'image/jpg')

  cowork2.save
end

5.times do
  latitudel = rand(38.69..38.80)
  longitudel = rand(-9.30..-9.10)
  grocery1 = Experience.create!(
    city: city1,
    category: category3,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudel, longitude: longitudel
  )

  gphoto1 = URI.open("https://images.unsplash.com/photo-1542838132-92c53300491e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z3JvY2VyaWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  gphoto2 = URI.open("https://images.unsplash.com/photo-1628102491629-778571d893a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z3JvY2VyaWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  gphoto3 = URI.open("https://images.unsplash.com/photo-1588964895597-cfccd6e2dbf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80")

  grocery1.photos.attach(io: gphoto1, filename: 'grocery1', content_type: 'image/jpg')
  grocery1.photos.attach(io: gphoto2, filename: 'grocery2', content_type: 'image/jpg')
  grocery1.photos.attach(io: gphoto3, filename: 'grocery3', content_type: 'image/jpg')

  grocery1.save
end

5.times do
  latitudep = rand(41.14..41.17)
  longitudep = rand(-8.69..-8.59)
  grocery2 = Experience.create!(
    city: city2,
    category: category3,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudep, longitude: longitudep
  )

  gphoto1 = URI.open("https://images.unsplash.com/photo-1542838132-92c53300491e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z3JvY2VyaWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  gphoto2 = URI.open("https://images.unsplash.com/photo-1628102491629-778571d893a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z3JvY2VyaWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  gphoto3 = URI.open("https://images.unsplash.com/photo-1588964895597-cfccd6e2dbf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80")

  grocery2.photos.attach(io: gphoto1, filename: 'grocery1', content_type: 'image/jpg')
  grocery2.photos.attach(io: gphoto2, filename: 'grocery2', content_type: 'image/jpg')
  grocery2.photos.attach(io: gphoto3, filename: 'grocery3', content_type: 'image/jpg')

  grocery2.save
end

5.times do
  latitudel = rand(38.69..38.80)
  longitudel = rand(-9.30..-9.10)
  gym1 = Experience.create!(
    city: city1,
    category: category4,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudel, longitude: longitudel
  )

  gymphoto1 = URI.open("https://images.unsplash.com/photo-1593079831268-3381b0db4a77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z3ltfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  gymphoto2 = URI.open("https://images.unsplash.com/photo-1558611848-73f7eb4001a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  gymphoto3 = URI.open("https://images.unsplash.com/photo-1521805103424-d8f8430e8933?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")

  gym1.photos.attach(io: gymphoto1, filename: 'gym1', content_type: 'image/jpg')
  gym1.photos.attach(io: gymphoto2, filename: 'gym2', content_type: 'image/jpg')
  gym1.photos.attach(io: gymphoto3, filename: 'gym3', content_type: 'image/jpg')

  gym1.save
end

5.times do
  latitudep = rand(41.14..41.17)
  longitudep = rand(-8.69..-8.59)
  gym2 = Experience.create!(
    city: city2,
    category: category4,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudep, longitude: longitudep
  )

  gymphoto1 = URI.open("https://images.unsplash.com/photo-1593079831268-3381b0db4a77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z3ltfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  gymphoto2 = URI.open("https://images.unsplash.com/photo-1558611848-73f7eb4001a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  gymphoto3 = URI.open("https://images.unsplash.com/photo-1521805103424-d8f8430e8933?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")

  gym2.photos.attach(io: gymphoto1, filename: 'gym1', content_type: 'image/jpg')
  gym2.photos.attach(io: gymphoto2, filename: 'gym2', content_type: 'image/jpg')
  gym2.photos.attach(io: gymphoto3, filename: 'gym3', content_type: 'image/jpg')

  gym2.save
end

5.times do
  latitudel = rand(38.69..38.80)
  longitudel = rand(-9.30..-9.10)
  cafe1 = Experience.create!(
    city: city1,
    category: category5,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudel, longitude: longitudel
  )

  cafephoto1 = URI.open("https://images.unsplash.com/photo-1453614512568-c4024d13c247?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80")
  cafephoto2 = URI.open("https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  cafephoto3 = URI.open("https://images.unsplash.com/photo-1445116572660-236099ec97a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80")

  cafe1.photos.attach(io: cafephoto1, filename: 'cafe1', content_type: 'image/jpg')
  cafe1.photos.attach(io: cafephoto2, filename: 'cafe2', content_type: 'image/jpg')
  cafe1.photos.attach(io: cafephoto3, filename: 'cafe3', content_type: 'image/jpg')

  cafe1.save
end

5.times do
  latitudep = rand(41.14..41.17)
  longitudep = rand(-8.69..-8.59)
  cafe2 = Experience.create!(
    city: city2,
    category: category5,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudep, longitude: longitudep
  )

  cafephoto1 = URI.open("https://images.unsplash.com/photo-1453614512568-c4024d13c247?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80")
  cafephoto2 = URI.open("https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  cafephoto3 = URI.open("https://images.unsplash.com/photo-1445116572660-236099ec97a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80")

  cafe2.photos.attach(io: cafephoto1, filename: 'cafe1', content_type: 'image/jpg')
  cafe2.photos.attach(io: cafephoto2, filename: 'cafe2', content_type: 'image/jpg')
  cafe2.photos.attach(io: cafephoto3, filename: 'cafe3', content_type: 'image/jpg')

  cafe2.save
end

5.times do
  latitudel = rand(38.69..38.80)
  longitudel = rand(-9.30..-9.10)
  coliving1 = Experience.create!(
    city: city1,
    category: category6,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudel, longitude: longitudel
  )

  colivingphoto1 = URI.open("https://images.unsplash.com/photo-1630569263546-b9453bb8c2e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80")
  colivingphoto2 = URI.open("https://images.unsplash.com/photo-1541616138747-f4a42c7f0668?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  colivingphoto3 = URI.open("https://images.unsplash.com/photo-1620989775958-d13edbdd72af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")

  coliving1.photos.attach(io: colivingphoto1, filename: 'living1', content_type: 'image/jpg')
  coliving1.photos.attach(io: colivingphoto2, filename: 'living2', content_type: 'image/jpg')
  coliving1.photos.attach(io: colivingphoto3, filename: 'living3', content_type: 'image/jpg')

  coliving1.save
end

5.times do
  latitudep = rand(41.14..41.17)
  longitudep = rand(-8.69..-8.59)
  coliving2 = Experience.create!(
    city: city2,
    category: category6,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudep, longitude: longitudep
  )

  colivingphoto1 = URI.open("https://images.unsplash.com/photo-1630569263546-b9453bb8c2e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80")
  colivingphoto2 = URI.open("https://images.unsplash.com/photo-1541616138747-f4a42c7f0668?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  colivingphoto3 = URI.open("https://images.unsplash.com/photo-1620989775958-d13edbdd72af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")

  coliving2.photos.attach(io: colivingphoto1, filename: 'living1', content_type: 'image/jpg')
  coliving2.photos.attach(io: colivingphoto2, filename: 'living2', content_type: 'image/jpg')
  coliving2.photos.attach(io: colivingphoto3, filename: 'living3', content_type: 'image/jpg')

  coliving2.save
end

5.times do
  latitudel = rand(38.69..38.80)
  longitudel = rand(-9.30..-9.10)
  night1 = Experience.create!(
    city: city1,
    category: category7,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudel, longitude: longitudel
  )

  nphoto1 = URI.open("https://images.unsplash.com/photo-1572116469696-31de0f17cc34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80")
  nphoto2 = URI.open("https://images.unsplash.com/photo-1598495496118-f8763b94bde5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  nphoto3 = URI.open("https://images.unsplash.com/photo-1468056961052-15507578a50d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80")

  night1.photos.attach(io: nphoto1, filename: 'night1', content_type: 'image/jpg')
  night1.photos.attach(io: nphoto2, filename: 'night2', content_type: 'image/jpg')
  night1.photos.attach(io: nphoto3, filename: 'night3', content_type: 'image/jpg')

  night1.save
end

5.times do
  latitudep = rand(41.14..41.17)
  longitudep = rand(-8.69..-8.59)
  night2 = Experience.create!(
    city: city2,
    category: category7,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudep, longitude: longitudep
  )

  nphoto1 = URI.open("https://images.unsplash.com/photo-1572116469696-31de0f17cc34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80")
  nphoto2 = URI.open("https://images.unsplash.com/photo-1598495496118-f8763b94bde5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  nphoto3 = URI.open("https://images.unsplash.com/photo-1468056961052-15507578a50d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80")

  night2.photos.attach(io: nphoto1, filename: 'night1', content_type: 'image/jpg')
  night2.photos.attach(io: nphoto2, filename: 'night2', content_type: 'image/jpg')
  night2.photos.attach(io: nphoto3, filename: 'night3', content_type: 'image/jpg')

  night2.save
end

5.times do
  latitudel = rand(38.69..38.80)
  longitudel = rand(-9.30..-9.10)
  restaurant1 = Experience.create!(
    city: city1,
    category: category8,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudel, longitude: longitudel
  )

  rphoto1 = URI.open("https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmVzdGF1cmFudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  rphoto2 = URI.open("https://images.unsplash.com/photo-1592861956120-e524fc739696?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHJlc3RhdXJhbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=1500&q=80")
  rphoto3 = URI.open("https://images.unsplash.com/photo-1498654896293-37aacf113fd9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHJlc3RhdXJhbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=1500&q=80")

  restaurant1.photos.attach(io: rphoto1, filename: 'restaurant1', content_type: 'image/jpg')
  restaurant1.photos.attach(io: rphoto2, filename: 'restaurant2', content_type: 'image/jpg')
  restaurant1.photos.attach(io: rphoto3, filename: 'restaurant3', content_type: 'image/jpg')

  restaurant1.save
end

5.times do
  latitudep = rand(41.14..41.17)
  longitudep = rand(-8.69..-8.59)
  restaurant2 = Experience.create!(
    city: city2,
    category: category8,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: latitudep, longitude: longitudep
  )

  rphoto1 = URI.open("https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmVzdGF1cmFudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  rphoto2 = URI.open("https://images.unsplash.com/photo-1592861956120-e524fc739696?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHJlc3RhdXJhbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=1500&q=80")
  rphoto3 = URI.open("https://images.unsplash.com/photo-1498654896293-37aacf113fd9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHJlc3RhdXJhbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=1500&q=80")

  restaurant2.photos.attach(io: rphoto1, filename: 'restaurant1', content_type: 'image/jpg')
  restaurant2.photos.attach(io: rphoto2, filename: 'restaurant2', content_type: 'image/jpg')
  restaurant2.photos.attach(io: rphoto3, filename: 'restaurant3', content_type: 'image/jpg')

  restaurant2.save
end

puts "Created #{Experience.count} experiences"
