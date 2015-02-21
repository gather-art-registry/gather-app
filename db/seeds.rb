# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

media = Medium.create([{ name: 'Clay', description: 'Clay' }, 
	{ name: 'Fiber', description: 'Fiber' }, 
	{ name: 'Glass', description: 'Glass' }, 
	{ name: 'Jewelry', description: 'Jewelry' },
	{ name: 'Metal', description: 'Metal' },
	{ name: 'Mixed Media', description: 'Mixed Media' },
	{ name: 'Wood', description: 'Wood' },
	{ name: 'Painting', description: 'Painting' },
	{ name: 'Photography', description: 'Photography' },
	{ name: 'Prints', description: 'Prints' }])

production_categories = ProductionCategory.create([{ name: 'In Stock, One of a Kind', description: 'In Stock, One of a Kind' },
	{ name: 'In Stock, Multiple Available', description: 'In Stock, Multiple Available' },
	{ name: 'Special Order', description: 'Special Order' },
	{ name: 'Unique Commision', description: 'Unique Commision' }])

categories = Category.create([{ name: 'For the Wall', description: 'For the Wall' },
	{ name: 'For the Kitchen', description: 'For the Kitchen' },
	{ name: 'For the Table', description: 'For the Table' },
	{ name: 'For Special Occasions', description: 'For Special Occasions' },
	{ name: 'For the House', description: 'For the House' },
	{ name: 'For the Outdoors', description: 'For the Outdoors' },
	{ name: 'For the Special Event', description: 'For the Special Event' }])

item_availabilities = ItemAvailability.create([{ name: 'Available', description: 'Available' },
	{ name: 'On Hold', description: 'On Hold' },
	{ name: 'Sold Out', description: 'Sold Out' },
	{ name: 'Coming Soon'  description: 'Coming Soon' }])

delivery_timings = DeliveryTiming.create([{ name: 'Delivered as Purchased', description: 'Delivered as Purchased' },
	{ name: 'Delivered when Individual Item Completed', description: 'Delivered when Individual Item Completed' },
	{ name: 'Delivered when the Set is Complete', description: 'Delivered when the Set is Complete' }])

shipping_instructions = ShippingInstruction.create([{ name: 'Shipped Alone', description: 'Shipped Alone' },
	{ name: 'Shipped with Others', description: 'Shipped with Others' },
	{ name: 'Hand Delivered', description: 'Hand Delivered' },
	{ name: 'Pick Up', description: 'Pick Up' }])