# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

url=["https://cdn2.iconfinder.com/data/icons/picol-vector/32/avatar-256.png",
"https://cdn0.iconfinder.com/data/icons/avatar-vol-2-4/512/9-256.png",
"https://cdn0.iconfinder.com/data/icons/avatar-vol-2-4/512/8-256.png",
"https://cdn1.iconfinder.com/data/icons/avatar-vol-9/512/9-256.png",
"https://cdn1.iconfinder.com/data/icons/avatar-vol-9/512/10-256.png",
"https://cdn0.iconfinder.com/data/icons/avatar-vol-2-4/512/2-256.png",
"https://cdn1.iconfinder.com/data/icons/ninja-things-1/720/ninja-background-256.png",
"https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/10_avatar-256.png",
"https://cdn4.iconfinder.com/data/icons/marvel-heroes-1/52/thor-256.png",
"https://cdn0.iconfinder.com/data/icons/avatar-vol-2-4/512/4-256.png",
"https://cdn0.iconfinder.com/data/icons/famous-character-vol-2-colored/48/JD-23-256.png",
"https://cdn4.iconfinder.com/data/icons/marvel-heroes-1/52/spiderman-256.png",
"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/girl_female_woman_avatar-256.png",
"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/muslim_woman_paranja_avatar-256.png",
"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-256.png",
"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/coffee_zorro_avatar_cup-256.png",
"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/marilyn_monroe_artist_avatar-256.png",
"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/sheep_mutton_animal_avatar-256.png",
"https://cdn4.iconfinder.com/data/icons/marvel-heroes-1/52/wolverine-256.png",
"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/suicide_squad_woman_avatar_joker-256.png",
"https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/ozzy_male_avatar_rock_singer-256.png",
"https://cdn2.iconfinder.com/data/icons/kids/128x128/actions/thumbnail.png",
"https://cdn1.iconfinder.com/data/icons/brown-monsters/128/Brown_Monsters_3-01.png",
]

url.each {|url| Image.create(url:url)}

Mod.create(name:"Dont go json waterfalls ")