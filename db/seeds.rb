# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# media = Medium.create([{ name: 'Clay', description: 'Clay' }, 
# 	{ name: 'Fiber', description: 'Fiber' }, 
# 	{ name: 'Glass', description: 'Glass' }, 
# 	{ name: 'Jewelry', description: 'Jewelry' },
# 	{ name: 'Metal', description: 'Metal' },
# 	{ name: 'Mixed Media', description: 'Mixed Media' },
# 	{ name: 'Wood', description: 'Wood' },
# 	{ name: 'Painting', description: 'Painting' },
# 	{ name: 'Photography', description: 'Photography' },
# 	{ name: 'Prints', description: 'Prints' }])

# production_categories = ProductionCategory.create([{ name: 'In Stock, One of a Kind', description: 'In Stock, One of a Kind' },
# 	{ name: 'In Stock, Multiple Available', description: 'In Stock, Multiple Available' },
# 	{ name: 'Special Order', description: 'Special Order' },
# 	{ name: 'Unique Commision', description: 'Unique Commision' }])

# categories = Category.create([{ name: 'For the Wall', description: 'For the Wall' },
# 	{ name: 'For the Kitchen', description: 'For the Kitchen' },
# 	{ name: 'For the Table', description: 'For the Table' },
# 	{ name: 'For Special Occasions', description: 'For Special Occasions' },
# 	{ name: 'For the House', description: 'For the House' },
# 	{ name: 'For the Outdoors', description: 'For the Outdoors' },
# 	{ name: 'For the Special Event', description: 'For the Special Event' }])

# item_availabilities = ItemAvailability.create([{ name: 'Available', description: 'Available' },
# 	{ name: 'On Hold', description: 'On Hold' },
# 	{ name: 'Sold Out', description: 'Sold Out' },
# 	{ name: 'Coming Soon',  description: 'Coming Soon' }])

# delivery_timings = DeliveryTiming.create([{ name: 'Delivered as Purchased', description: 'Delivered as Purchased' },
# 	{ name: 'Delivered when Individual Item Completed', description: 'Delivered when Individual Item Completed' },
# 	{ name: 'Delivered when the Set is Complete', description: 'Delivered when the Set is Complete' }])

# shipping_instructions = ShippingInstruction.create([{ name: 'Shipped Alone', description: 'Shipped Alone' },
# 	{ name: 'Shipped with Others', description: 'Shipped with Others' },
# 	{ name: 'Hand Delivered', description: 'Hand Delivered' },
# 	{ name: 'Pick Up', description: 'Pick Up' }])

# type_of_product = TypeOfProduct.create([{ name: 'Commission', description: 'Commission' },
# 	{ name: 'Special Order', description: 'Special Order' },
# 	{ name: 'In-Stock', description: 'In-Stock' }])

# galleries = Gallery.create([
# 	{ name: 'For the Wall', description: 'Items to fill the walls of your home' },
# 	{ name: 'For the Kitchen', description: 'Items to fill your kitchen' },
# 	{ name: 'For the Table', description: 'Items to set your table' },
# 	{ name: 'For Special Occasions', description: 'Items to celebrate holidays and special occasions' },
# 	{ name: 'For the House', description: 'Items to fill the rooms of your house' },
# 	{ name: 'For the Outdoors', description: 'Items to fill the great outdoors' }
# 	])

contents = Content.create([{
	{ title: 'Create your profile before you create your registry',
		body: 'To create a registry on Gather, you will create a profile. This is your opportunity 
		to tell your guests a little bit about yourself and why you are registering for art and handmade 
		pieces. You will also answer some questions for us, such as your contact information, shipping 
		address, and special requests so we can make sure you receive your gifts.',
		# order: 1,
		page: 'About Using Gather'},
	{ title: 'Create your registry',
		body: 'After creating your profile, select items from the permanent collection to search the 
		permanent collection for items that you want to include in your registry. You can search by media, 
		specific artist, or by the “For the…” categories, which organizes the collection by rooms. Once you 
		have found an item, click the “add to my registry” button. This will move that piece into your 
		personal gallery, which your guests will be able to view.

		Some artists in the permanent collection accept commissions. If you would like to explore commissioning 
		a piece from an artist, contact us.

		You  may know and love an artist that is not in our permanent collection. We would be happy to work 
		with them to add their work to your unique registry. Please contact us about this option.',
		# order: 2,
		page: 'About Using Gather'},
	{ title: 'Finding and shopping from a registry',
		body: 'Click on “Find a registry” at the top any page on our site  and search for the couple. 
		This will bring you to their personal gallery. When you find the perfect gift, click “add to my 
		shopping cart.” Alternatively, you can make a contribution to a larger ticket item. When finished, 
		click “checkout.” Gather accepts all major credit cards, as well as Paypal and Amazon payments.',
		order: 3,
		page: 'About Using Gather'},
	{ title: 'Drop down box #4: When will the pieces be delivered?',
		body: 'The short answer? It depends. There are three general categories of availability for the art 
		on Gather: in-stock, special order, and unique commission. If an artist keeps an item in stock, it 
		will be available for immediate delivery. If a piece is being crafted for your registry, or is 
		commissioned for you there will be some time between when the item is purchased and when it is 
		delivered. An example of this might be a set of ceramic dishware or a painting. All items available will 
		specify estimated delivery.'
		# order: 4,
		page: 'About Using Gather'},
	{ title: 'How do I submit my work for review?',	
		body: 'Click here for the entry form (weblink - google form?).  Please fill out the information 
		required on the form and then send 6 images of your work to this email address:  
		(artistcall.gatherartregistry@gmail.com) All images must be in  jpeg formate and less than 1 GB 
		in size. File names for all 6 images must follow the format: doe.jane.1.jpeg; doe.jane.2.jpeg; etc.', 
		# order: 1,
		page: 'About Becoming a Gather Artist'},
	{ title: 'Who will be reviewing work for the site?',
		body: 'One of the things that sets Gather apart is our dedication to providing high caliber art 
		that is objectively excellent to our clients. To help us with that goal, Gather selects a panel 
		of jurors that range from artists and gallerists to individuals in the wedding and broader community. 
		We aim to include expertise in as many diverse art mediums and processes as possible to truly 
		understand what makes good art.',
		# order: 2,
		page: 'About Becoming a Gather Artist'}, 
	{ title: 'What is Gather?',
		body: 'Gather is an online gallery featuring works by local artists and specializing in gift 
		registries.. We’re the matchmakers between couples seeking unique art and handmade items for their 
		registry, and artists seeking a market for their work.',  
		order: 1,
		page: 'About Gather'},
	{ title: 'I want to create a registry',
		body: 'First, go to the login page and create a profile (link to login page). Next, go to the 
		permanent gallery and search for items you want to add to your registry. When you find a piece 
		that you love, add it to your personal gallery by clicking the “add to my registry” button. 
		When you’ve finished your registry, share your personal gallery’s unique URL with your guests.',
		# order: 2,
		page: 'About Gather'}
	])

