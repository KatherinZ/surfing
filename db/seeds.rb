#позволяет наполнять БД инфой (засеивать ее), упрощает создание постов и другого контента

# post = Post.create(
# 	name: "New Album",
#   #(123 – если числа, то вносить без кавычек)
# 	title: "Bad Seeds",
# 	author: "Nick Cave",
# 	content: "Tracklist"
# )

Post.destroy_all
puts "Destroyed everything you touch"

posts = [
{
	name: "New Album",
	title: "The Bad Seeds",
	author: "Nick Cave",
	content: "Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'kamchat.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: open("https://in-sound.ru/upload/iblock/d85/d859aa8387fd5fcd7a933be2af91066b.jpg")
}
]

# posts.each do |post|
# 	postik = Post.create(post)
# 	puts post
# 	puts postik
# 	puts postik.to_json
# 	puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
# end
# post = Post.create(posts[0])

posts.each do |post|
	postik = Post.create(post)
	puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
end

# берем это из соседнего файла - schema.rb

#id = номер нового поста (считаетс исходя из кол-ва уже созданных)
# эта штука puts нужна, чтобы вывести для себя в консоль, что пост создался, т е чтобы что-то вставить из другого файла
