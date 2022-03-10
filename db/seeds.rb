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
  name: "Nola Kitchen",
  latitude: 41.148017587212536, longitude: -8.612224766029078,
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
  name: "Manna",
  latitude: 41.15014183833934, longitude: -8.613513102902308,
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
  name: "Early",
  latitude: 41.152643648468974, longitude: -8.617698442861787,
  description: "Patrícia and Emanuel, siblings, have come to give a breath of fresh air to the address of the old bookstore Contraste. On Rua dos Bragas, EARLY opens early and serves breakfast, brunch, lunch and snacks. The book-filled display was left behind but the idea that also resembles the world of reading is kept: life should be lived calmly, enjoyed with no rush and accompanied by a warm drink and a slice of homemade cake, just like a good book.",
  website_url: "http://www.early.pt"
)

ephoto1 = URI.open("http://early.pt/images/LF_EARLY-109.JPG")
ephoto2 = URI.open("http://early.pt/images/LF_EARLY.jpg")
ephoto3 = URI.open("http://early.pt/images/LF_EARLY-78.JPG")

early.photos.attach(io: ephoto1, filename: 'early1', content_type: 'image/jpg')
early.photos.attach(io: ephoto2, filename: 'early2', content_type: 'image/jpg')
early.photos.attach(io: ephoto3, filename: 'early3', content_type: 'image/jpg')

early.save

cru = Experience.create!(
  city: city2,
  category: category2,
  name: "Cru Creative Hub",
  latitude: 41.15024748156819, longitude: -8.620823766297418,
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
  name: "Selina Navi",
  latidude: 41.14989388364887, longitude: -8.614461948922195,
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
  name: "Porto i/o Downtown",
  latitude: 41.14721683941333, longitude: -8.61404711766183,
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
  name: "Lotus Yoga Studio",
  latitude: 41.15362679345979, longitude: -8.66585711853535,
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
  name: "Studio Fly Porto",
  latitude: 41.147361018086805, longitude: -8.600848531737412,
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
  name: "Hot Pod Yoga",
  latitude: 41.17594386090419, longitude: -8.682595456881769,
  description: "We are Europes largest yoga business. Since 2013, over 100,000 people have immersed themselves in a Hotpod class at one of our 50+ locations around the world.
  We first landed in Porto in 2019.",
  website_url: "https://hotpodyoga.com/studios/porto/"
)

hotpodphoto1 = URI.open("https://cdn.hotpodyoga.com/app/uploads/2018/11/05143846/Inpod-Images-January-2020-Hero-Low-Res-004-960x540.jpg")
hotpodphoto2 = URI.open("https://cdn.hotpodyoga.com/app/uploads/2018/11/13133845/HPY_JULY_2020_Still39-960x540.jpg")

hotpod.photos.attach(io: hotpodphoto1, filename: 'pod1', content_type: 'image/jpg')
hotpod.photos.attach(io: hotpodphoto2, filename: 'pod2', content_type: 'image/jpg')

hotpod.save

seagull = Experience.create!(
  city: city1,
  category: category5,
  name: "Seagull Method Cafe",
  latitude: 38.714824421575344, longitude: -9.14946754522772,
  description: "Art Bistro & Comfort food",
  website_url: "https://www.instagram.com/manifest.lisbon/?hl=en"
)

seagullphoto1 = URI.open("https://laptopfriendly.co/images/places/lisbon/seagull-method-cafe/seagull-method-cafe%20other%20seagull-method-cafe-other%20.jpg")
seagullphoto2 = URI.open("https://lifecooler.com/files/registos/imagens/519276/411957.jpg")

seagull.photos.attach(io: seagullphoto1, filename: 'pod1', content_type: 'image/jpg')
seagull.photos.attach(io: seagullphoto2, filename: 'pod2', content_type: 'image/jpg')

seagull.save

puro = Experience.create!(
  city: city1,
  category: category8,
  name: "Puro",
  latitude: 38.726029976223046, longitude: -9.144420550508576,
  description: "
  In June 2016 Chef Antônio Amorin started the Puro restaurant in our beautiful Lisbon. Focused on only using the best in its arsenal of recipes, Puro Lisboa stands out even more with the title of BEST FRANCESINHA IN LISBON!",
  website_url: "https://purolisboa.negocio.site/"
)

purophoto1 = URI.open("https://lh3.googleusercontent.com/p/AF1QipPeX31Z-AgcyTr9ICXpWka9ckXLmFjea6TQgYF4=w1080-h608-p-no-v0")
purophoto2 = URI.open("https://res.cloudinary.com/tf-lab/image/upload/w_600,h_337,c_fill,g_auto:subject,q_auto,f_auto/restaurant/f140147a-16c5-4782-9b50-c254d841b1fa/4e1f773d-c4d0-43bb-9600-d2c58633b719.jpg")

puro.photos.attach(io: purophoto1, filename: 'pod1', content_type: 'image/jpg')
puro.photos.attach(io: purophoto2, filename: 'pod2', content_type: 'image/jpg')

puro.save

lux = Experience.create!(
  city: city1,
  category: category7,
  name: "LuxFrágil",
  latitude: 38.715062535353205, longitude: -9.120677388891467,
  description: "Lux Fragil is Portugal's most internationally renowned venue and one of Lisbon's biggest nightclubs. Since 1998, it has presented weekly events where house, techno and disco is often—but not exclusively—the soundtrack.",
  website_url: "https://www.luxfragil.com/"
)

luxphoto1 = URI.open("https://s7a5n8m2.stackpathcdn.com/wp-content/uploads/2016/05/lux4.jpg")
luxphoto2 = URI.open("http://convida.pt/images/POIs/LuxFragil_01.jpg")

lux.photos.attach(io: luxphoto1, filename: 'pod1', content_type: 'image/jpg')
lux.photos.attach(io: luxphoto2, filename: 'pod2', content_type: 'image/jpg')

lux.save

# latitudep = rand(41.1425..41.15)
# longitudep = rand(-8.63..-8.59)
# latitudel = rand(38.713..38.726)
# longitudel = rand(-9.14..-9.12)


# latitudel = rand(38.713..38.726)
# longitudel = rand(-9.14..-9.12)
yoga1 = Experience.create!(
    city: city1,
    category: category1,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  yoga2 = Experience.create!(
    city: city1,
    category: category1,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  yoga3 = Experience.create!(
    city: city1,
    category: category1,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )

  yphoto1 = URI.open("https://images.unsplash.com/photo-1615657973599-990d6e05fb8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8eW9nYSUyMHN0dWRpb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  yphoto2 = URI.open("https://images.unsplash.com/photo-1588286840104-8957b019727f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8eW9nYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  yphoto3 = URI.open("https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8eW9nYSUyMHN0dWRpb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")

  yoga1.photos.attach(io: yphoto1, filename: 'yoga1', content_type: 'image/jpg')
  yoga2.photos.attach(io: yphoto2, filename: 'yoga2', content_type: 'image/jpg')
  yoga3.photos.attach(io: yphoto3, filename: 'yoga3', content_type: 'image/jpg')

  yoga1.save
  yoga2.save
  yoga3.save

  yoga4 = Experience.create!(
    city: city2,
    category: category1,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  yoga5 = Experience.create!(
    city: city2,
    category: category1,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  yoga6 = Experience.create!(
    city: city2,
    category: category1,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )

  yphoto1 = URI.open("https://images.unsplash.com/photo-1615657973599-990d6e05fb8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8eW9nYSUyMHN0dWRpb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  yphoto2 = URI.open("https://images.unsplash.com/photo-1588286840104-8957b019727f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8eW9nYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  yphoto3 = URI.open("https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8eW9nYSUyMHN0dWRpb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")

  yoga4.photos.attach(io: yphoto1, filename: 'yoga1', content_type: 'image/jpg')
  yoga5.photos.attach(io: yphoto2, filename: 'yoga2', content_type: 'image/jpg')
  yoga6.photos.attach(io: yphoto3, filename: 'yoga3', content_type: 'image/jpg')

  yoga4.save
  yoga5.save
  yoga6.save

  cowork1 = Experience.create!(
    city: city1,
    category: category2,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  cowork2 = Experience.create!(
    city: city1,
    category: category2,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  cowork3 = Experience.create!(
    city: city1,
    category: category2,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )

  cophoto1 = URI.open("https://images.unsplash.com/photo-1516062423079-7ca13cdc7f5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y28lMjB3b3JrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  cophoto2 = URI.open("https://images.unsplash.com/photo-1521737604893-d14cc237f11d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1784&q=80")
  cophoto3 = URI.open("https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y28lMjB3b3JrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")

  cowork1.photos.attach(io: cophoto1, filename: 'cowork1', content_type: 'image/jpg')
  cowork2.photos.attach(io: cophoto2, filename: 'cowork2', content_type: 'image/jpg')
  cowork3.photos.attach(io: cophoto3, filename: 'cowork3', content_type: 'image/jpg')

  cowork1.save
  cowork2.save
  cowork3.save

  cowork4 = Experience.create!(
    city: city2,
    category: category2,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  cowork5 = Experience.create!(
    city: city2,
    category: category2,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  cowork6 = Experience.create!(
    city: city2,
    category: category2,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )

  cophoto1 = URI.open("https://images.unsplash.com/photo-1516062423079-7ca13cdc7f5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y28lMjB3b3JrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  cophoto2 = URI.open("https://images.unsplash.com/photo-1521737604893-d14cc237f11d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1784&q=80")
  cophoto3 = URI.open("https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y28lMjB3b3JrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")

  cowork4.photos.attach(io: cophoto1, filename: 'cowork1', content_type: 'image/jpg')
  cowork5.photos.attach(io: cophoto2, filename: 'cowork2', content_type: 'image/jpg')
  cowork6.photos.attach(io: cophoto3, filename: 'cowork3', content_type: 'image/jpg')

  cowork4.save
  cowork5.save
  cowork6.save

  grocery1 = Experience.create!(
    city: city1,
    category: category3,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  grocery2 = Experience.create!(
    city: city1,
    category: category3,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  grocery3 = Experience.create!(
    city: city1,
    category: category3,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )

  gphoto1 = URI.open("https://images.unsplash.com/photo-1542838132-92c53300491e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z3JvY2VyaWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  gphoto2 = URI.open("https://images.unsplash.com/photo-1628102491629-778571d893a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z3JvY2VyaWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  gphoto3 = URI.open("https://images.unsplash.com/photo-1588964895597-cfccd6e2dbf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80")

  grocery1.photos.attach(io: gphoto1, filename: 'grocery1', content_type: 'image/jpg')
  grocery2.photos.attach(io: gphoto2, filename: 'grocery2', content_type: 'image/jpg')
  grocery3.photos.attach(io: gphoto3, filename: 'grocery3', content_type: 'image/jpg')

  grocery1.save
  grocery2.save
  grocery3.save

  grocery4 = Experience.create!(
    city: city2,
    category: category3,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  grocery5 = Experience.create!(
    city: city2,
    category: category3,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  grocery6 = Experience.create!(
    city: city2,
    category: category3,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )

  gphoto1 = URI.open("https://images.unsplash.com/photo-1542838132-92c53300491e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z3JvY2VyaWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  gphoto2 = URI.open("https://images.unsplash.com/photo-1628102491629-778571d893a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z3JvY2VyaWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  gphoto3 = URI.open("https://images.unsplash.com/photo-1588964895597-cfccd6e2dbf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80")

  grocery4.photos.attach(io: gphoto1, filename: 'grocery1', content_type: 'image/jpg')
  grocery5.photos.attach(io: gphoto2, filename: 'grocery2', content_type: 'image/jpg')
  grocery6.photos.attach(io: gphoto3, filename: 'grocery3', content_type: 'image/jpg')

  grocery4.save
  grocery5.save
  grocery6.save

  gym1 = Experience.create!(
    city: city1,
    category: category4,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  gym2 = Experience.create!(
    city: city1,
    category: category4,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  gym3 = Experience.create!(
    city: city1,
    category: category4,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )

  gymphoto1 = URI.open("https://images.unsplash.com/photo-1593079831268-3381b0db4a77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z3ltfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  gymphoto2 = URI.open("https://images.unsplash.com/photo-1558611848-73f7eb4001a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  gymphoto3 = URI.open("https://images.unsplash.com/photo-1521805103424-d8f8430e8933?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")

  gym1.photos.attach(io: gymphoto1, filename: 'gym1', content_type: 'image/jpg')
  gym2.photos.attach(io: gymphoto2, filename: 'gym2', content_type: 'image/jpg')
  gym3.photos.attach(io: gymphoto3, filename: 'gym3', content_type: 'image/jpg')

  gym1.save
  gym2.save
  gym3.save

  gym4 = Experience.create!(
    city: city2,
    category: category4,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  gym5 = Experience.create!(
    city: city2,
    category: category4,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  gym6 = Experience.create!(
    city: city2,
    category: category4,
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )

  gymphoto1 = URI.open("https://images.unsplash.com/photo-1593079831268-3381b0db4a77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z3ltfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=80")
  gymphoto2 = URI.open("https://images.unsplash.com/photo-1558611848-73f7eb4001a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  gymphoto3 = URI.open("https://images.unsplash.com/photo-1521805103424-d8f8430e8933?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")

  gym4.photos.attach(io: gymphoto1, filename: 'gym1', content_type: 'image/jpg')
  gym5.photos.attach(io: gymphoto2, filename: 'gym2', content_type: 'image/jpg')
  gym6.photos.attach(io: gymphoto3, filename: 'gym3', content_type: 'image/jpg')

  gym4.save
  gym5.save
  gym6.save

  cafe1 = Experience.create!(
    city: city1,
    category: category5,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  cafe2 = Experience.create!(
    city: city1,
    category: category5,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  cafe3 = Experience.create!(
    city: city1,
    category: category5,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )

  cafephoto1 = URI.open("https://images.unsplash.com/photo-1453614512568-c4024d13c247?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80")
  cafephoto2 = URI.open("https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  cafephoto3 = URI.open("https://images.unsplash.com/photo-1445116572660-236099ec97a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80")

  cafe1.photos.attach(io: cafephoto1, filename: 'cafe1', content_type: 'image/jpg')
  cafe2.photos.attach(io: cafephoto2, filename: 'cafe2', content_type: 'image/jpg')
  cafe3.photos.attach(io: cafephoto3, filename: 'cafe3', content_type: 'image/jpg')

  cafe1.save
  cafe2.save
  cafe3.save

  cafe4 = Experience.create!(
    city: city2,
    category: category5,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  cafe5 = Experience.create!(
    city: city2,
    category: category5,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  cafe6 = Experience.create!(
    city: city2,
    category: category5,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )

  cafephoto1 = URI.open("https://images.unsplash.com/photo-1453614512568-c4024d13c247?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80")
  cafephoto2 = URI.open("https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  cafephoto3 = URI.open("https://images.unsplash.com/photo-1445116572660-236099ec97a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80")

  cafe4.photos.attach(io: cafephoto1, filename: 'cafe1', content_type: 'image/jpg')
  cafe5.photos.attach(io: cafephoto2, filename: 'cafe2', content_type: 'image/jpg')
  cafe6.photos.attach(io: cafephoto3, filename: 'cafe3', content_type: 'image/jpg')

  cafe4.save
  cafe5.save
  cafe6.save

  coliving1 = Experience.create!(
    city: city1,
    category: category6,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  coliving2 = Experience.create!(
    city: city1,
    category: category6,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  coliving3 = Experience.create!(
    city: city1,
    category: category6,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )

  colivingphoto1 = URI.open("https://images.unsplash.com/photo-1630569263546-b9453bb8c2e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80")
  colivingphoto2 = URI.open("https://images.unsplash.com/photo-1541616138747-f4a42c7f0668?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  colivingphoto3 = URI.open("https://images.unsplash.com/photo-1620989775958-d13edbdd72af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")

  coliving1.photos.attach(io: colivingphoto1, filename: 'living1', content_type: 'image/jpg')
  coliving2.photos.attach(io: colivingphoto2, filename: 'living2', content_type: 'image/jpg')
  coliving3.photos.attach(io: colivingphoto3, filename: 'living3', content_type: 'image/jpg')

  coliving1.save
  coliving3.save
  coliving2.save

  coliving4 = Experience.create!(
    city: city2,
    category: category6,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  coliving5 = Experience.create!(
    city: city2,
    category: category6,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  coliving6 = Experience.create!(
    city: city2,
    category: category6,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )

  colivingphoto1 = URI.open("https://images.unsplash.com/photo-1630569263546-b9453bb8c2e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80")
  colivingphoto2 = URI.open("https://images.unsplash.com/photo-1541616138747-f4a42c7f0668?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  colivingphoto3 = URI.open("https://images.unsplash.com/photo-1620989775958-d13edbdd72af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")

  coliving6.photos.attach(io: colivingphoto1, filename: 'living1', content_type: 'image/jpg')
  coliving5.photos.attach(io: colivingphoto2, filename: 'living2', content_type: 'image/jpg')
  coliving4.photos.attach(io: colivingphoto3, filename: 'living3', content_type: 'image/jpg')

  coliving4.save
  coliving5.save
  coliving6.save

  night1 = Experience.create!(
    city: city1,
    category: category7,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  night2 = Experience.create!(
    city: city1,
    category: category7,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  night3 = Experience.create!(
    city: city1,
    category: category7,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )

  nphoto1 = URI.open("https://images.unsplash.com/photo-1572116469696-31de0f17cc34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80")
  nphoto2 = URI.open("https://images.unsplash.com/photo-1598495496118-f8763b94bde5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  nphoto3 = URI.open("https://images.unsplash.com/photo-1468056961052-15507578a50d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80")

  night1.photos.attach(io: nphoto1, filename: 'night1', content_type: 'image/jpg')
  night2.photos.attach(io: nphoto2, filename: 'night2', content_type: 'image/jpg')
  night3.photos.attach(io: nphoto3, filename: 'night3', content_type: 'image/jpg')

  night1.save
  night2.save
  night3.save

  night4 = Experience.create!(
    city: city2,
    category: category7,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  night5 = Experience.create!(
    city: city2,
    category: category7,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  night6 = Experience.create!(
    city: city2,
    category: category7,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )

  nphoto1 = URI.open("https://images.unsplash.com/photo-1572116469696-31de0f17cc34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80")
  nphoto2 = URI.open("https://images.unsplash.com/photo-1598495496118-f8763b94bde5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  nphoto3 = URI.open("https://images.unsplash.com/photo-1468056961052-15507578a50d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80")

  night6.photos.attach(io: nphoto1, filename: 'night1', content_type: 'image/jpg')
  night4.photos.attach(io: nphoto2, filename: 'night2', content_type: 'image/jpg')
  night5.photos.attach(io: nphoto3, filename: 'night3', content_type: 'image/jpg')

  night4.save
  night5.save
  night6.save

  restaurant1 = Experience.create!(
    city: city1,
    category: category8,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  restaurant2 = Experience.create!(
    city: city1,
    category: category8,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )
  restaurant3 = Experience.create!(
    city: city1,
    category: category8,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(38.713..38.726), longitude: rand(-9.14..-9.12)
  )

  rphoto1 = URI.open("https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmVzdGF1cmFudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  rphoto2 = URI.open("https://images.unsplash.com/photo-1592861956120-e524fc739696?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHJlc3RhdXJhbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=1500&q=80")
  rphoto3 = URI.open("https://images.unsplash.com/photo-1498654896293-37aacf113fd9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHJlc3RhdXJhbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=1500&q=80")

  restaurant1.photos.attach(io: rphoto1, filename: 'restaurant1', content_type: 'image/jpg')
  restaurant2.photos.attach(io: rphoto2, filename: 'restaurant2', content_type: 'image/jpg')
  restaurant3.photos.attach(io: rphoto3, filename: 'restaurant3', content_type: 'image/jpg')

  restaurant1.save
  restaurant2.save
  restaurant3.save

  restaurant4 = Experience.create!(
    city: city2,
    category: category8,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )
  restaurant5 = Experience.create!(
    city: city2,
    category: category8,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )

  restaurant6 = Experience.create!(
    city: city2,
    category: category8,
    name: Faker::Company.name,
    description: "Come for an authentic experience in the heart of the city, more information in our website!",
    website_url: "www.#{Faker::Company.name}.com",
    latitude: rand(41.1425..41.15), longitude: rand(-8.63..-8.59)
  )

  rphoto1 = URI.open("https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmVzdGF1cmFudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1500&q=80")
  rphoto2 = URI.open("https://images.unsplash.com/photo-1592861956120-e524fc739696?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHJlc3RhdXJhbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=1500&q=80")
  rphoto3 = URI.open("https://images.unsplash.com/photo-1498654896293-37aacf113fd9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHJlc3RhdXJhbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=1500&q=80")

  restaurant6.photos.attach(io: rphoto1, filename: 'restaurant1', content_type: 'image/jpg')
  restaurant4.photos.attach(io: rphoto2, filename: 'restaurant2', content_type: 'image/jpg')
  restaurant5.photos.attach(io: rphoto3, filename: 'restaurant3', content_type: 'image/jpg')

  restaurant4.save
  restaurant5.save
  restaurant6.save

puts "Created #{Experience.count} experiences"
