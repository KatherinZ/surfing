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
	name: "Серфинг Возможности",
	title: "«Серфинг не там, где выше волны»: Сергей Расшиваев о том, как развивать индустрию в России",
	content: "О серфинге я узнал, когда учился в первом классе. Сразу захотелось его попробовать, но я не верил, что это реально. Мне было понятно, как стать космонавтом, но как стать серфером — вообще нет.

Я всегда любил экстремальные виды спорта: катался на скейте, сноуборде, горном велосипеде и роликах. После школы пошел учиться на океанолога в Санкт-Петербургский государственный университет. В процессе понял, что мне это не так интересно: с одной стороны был романтический образ Кусто, который я себе представлял, с другой — настоящая наука.

Я встал на серф в 2007 году в Португалии. Это была моя первая поездка за границу. В какой-то момент я вообще отключился от той жизни, что ждала в Питере, она стала будто не моя. Именно тогда я решил, что должен сделать все, чтобы серфинг стал моей жизнью. Более того, я ничего не терял: мне было 22 года, я работал в спортивном магазине, но карьерой это было сложно назвать. Через два года я переехал в Доминикану, и с того момента в моей жизни начался только серфинг.",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-1.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
  image: File.open(Rails.root.join('public', 'images', 'posts__pic-2.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-3.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-4.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-5.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-6.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-7.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-8.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-9.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-10.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-11.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-12.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-13.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-14.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-15.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-16.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-17.png'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'posts__pic-18.png'))
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
