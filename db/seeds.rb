# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create( name: 'Kristin', password: 'password')

Reading.create( date: 'Sunday', 
	            week: '23rd Sunday after Pentecost', 
	            title: 'A Pharisee and tax collector pray', 
	            verse: 'Luke 18:9-14', 
	            scripture: '9 To some who were confident of their own righteousness and looked down on everyone else, Jesus told this parable: 10 “Two men went up to the temple to pray, one a Pharisee and the other a tax collector. 11 The Pharisee stood by himself and prayed: ‘God, I thank you that I am not like other people—robbers, evildoers, adulterers—or even like this tax collector. 12 I fast twice a week and give a tenth of all I get.’

13 “But the tax collector stood at a distance. He would not even look up to heaven, but beat his breast and said, ‘God, have mercy on me, a sinner.’

14 “I tell you that this man, rather than the other, went home justified before God. For all those who exalt themselves will be humbled, and those who humble themselves will be exalted.”')

Reading.create( date: 'Monday', 
	            week: '23rd Sunday after Pentecost', 
	            title: 'Jesus teaches about humility', 
	            verse: 'Matthew 23:1-12', 
	            scripture: '23 Then Jesus said to the crowds and to his disciples: 2 “The teachers of the law and the Pharisees sit in Moses’ seat. 3 So you must be careful to do everything they tell you. But do not do what they do, for they do not practice what they preach. 4 They tie up heavy, cumbersome loads and put them on other people’s shoulders, but they themselves are not willing to lift a finger to move them.

5 “Everything they do is done for people to see: They make their phylacteries[a] wide and the tassels on their garments long; 6 they love the place of honor at banquets and the most important seats in the synagogues; 7 they love to be greeted with respect in the marketplaces and to be called ‘Rabbi’ by others.

8 “But you are not to be called ‘Rabbi,’ for you have one Teacher, and you are all brothers. 9 And do not call anyone on earth ‘father,’ for you have one Father, and he is in heaven. 10 Nor are you to be called instructors, for you have one Instructor, the Messiah. 11 The greatest among you will be your servant. 12 For those who exalt themselves will be humbled, and those who humble themselves will be exalted.')
  
WeeklyResource.create(creative_response: 'In 2 Timothy 4, Paul writes of his experience of being deserted by others, of feeling alone. 
	
	Be the hands and feet of Christ, reaching out to the lonely in your area.
	
	Invite someone who lives alone or who is new to your community to a meal at your home.',
      memory_verse: 'If you put yourself above others, you will be put down. But if you humble yourself, you will be honoured.

      Luke 18:14B',

      mealtime_prayer: 'We thank you for our food, O God, for life and joy and play. We thank you for the special things you give to us this day. Amen',

      season_description: 'Sundays after Pentecost represent "time of the church". During the season between Christmas and Lent, we focus on the work of the Church in the world, Jesus message to us, and our growth in Christ' )