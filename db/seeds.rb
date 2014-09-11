
15.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password(8))
end

User.create(name: "Alan Cohen", email: "alan@test.com", password: "password")
User.create(name: "Avi Fox-Rosen", email: "avi@test.com", password: "password")
User.create(name: "Justin Lee", email: "justin@test.com", password: "password")
User.create(name: "Yariv Kirschner", email: "yariv@test.com", password: "password")


user = User.all.sample
document = user.documents.create(
    title: 'Louis Black',
    context: "A letter about public smoking laws",
    privacy: false
  )

document.versions.create(content: 
  "Louis Black writes another tirade about the smoking ban. He alleges that pro-ban voters are less concerned about health hazards than a desire to push their concept of morality on others. And then he excuses a second contingent of nonsmoking, anti-ban types (including himself) who voted against the ban for the ideological reason that the gummint should stay out of people's business even in cases when their motivation is to limit the public's risk of developing lung cancer.

  It's self-evident that the approximately 200 businesses this law affects are places where people go at night to enjoy a beverage or to hear music or both. That was the statute's intent. The large number of buildings where smoking was already eliminated is not apropos to why this specific law was proposed. Those 200 businesses have a whopping significance in that they include virtually every live music venue in the city. There are a dozen or so such clubs that comprise the backbone of the scene. It's easy to identify them – they advertise regularly in the Chronicle. Based on the four that I frequent, there has been no detectable drop-off in business. Whatever decrease in the cash register occurred, it was small enough that they could compensate by upping the price of a beverage by 25 or 50 cents, and could do so without alienating their customers. Predictions of economic doom were hype, as the aftermath of the ban has proven.

  Excuse me, but the argument that the ban would actually increase turnout in these business was silly from the get-go, which merely proves that there were over-the-top arguments on both sides. I bypass contentious online forums because they are rampant with this kind of blather. I would request that Louis Black not use print space to respond to messages received in that forum, and leave the paper to more rational sorts of discourse."
  )


user = User.all.sample
document = user.documents.create(
    title: 'Richard Linklater',
    context: "on Linklater's film career",
    privacy: false
  )

document.versions.create(content: "All that effort for a cover to rightfully match the article on Linklater's period film and no apostrophe?! If you are going to pay attention to the details (the weathering, the choice of typefaces, the large half-tone dot on both photos and headline – even changing the paper's masthead), note your quotation marks are not rendered the same as the 'apostrophe,'' as that's a 'prime' or 'foot' mark. That's a three-fourths-inch gaffe that should have been addressed before the shadows were added in Photoshop. I'm just sayin'.")


user = User.all.sample
document = user.documents.create(
    title: 'Thoughts on Raoul Hernandez',
    context: 'Reviewing a music review',
    privacy: false
  )

document.versions.create(content: "I am writing to you regarding the phantasmagorilicious review of Fits by Raoul Hernandez. His rendered regaling of unexplainable, ubiquitous prose led me down a befuddled, topsy-turvy rattled path of extreme mystification as to how one could conjure up said thoughts after listening to White Denim's newest LP. Somehow synthesizing senses, a media mephitis bubbled forth as written words cunningly coalesced into crap. His perineal pining was a crappy clanging cacophony of theosaurohalucigenic prepostera. It evoked an arhythmic nauseopshychosis in my rockish rollish selfsame soul. My predispository boogievibe is woundsmacked beyond consolitory rehabilitation ... and yeah, dude, I swallowed my tongue.")


user = User.all.sample
document = user.documents.create(
    title: "The Weapons Epidemic",
    context: "The need to contain the world of disorder",
    privacy: false
  )

document.versions.create(content: "Re: 'Order vs. disorder, part 3' (Aug. 25): Thomas L. Friedman emphasizes the need to contain the world of disorder, and to do so by slow, collaborative efforts at nation-building. But he fails to see just how pivotal is the role that a major worldwide epidemic has in producing so much disorder and so many refugees: the weapons epidemic.

It took a decommissioning of weapons, rather than a solving of differences, to bring peace to Northern Ireland. For years, the leaders of West African states have pleaded for a ban on small-arms exports from the superpowers. The perpetrators of the firearms epidemic continue to be handsomely rewarded, despite the increasing pockets of chaos they bring even to well-developed, sustainable societies. Vast quantities of weapons are falling into the wrong hands, both abroad and in the American homeland.")


user = User.all.sample
document = user.documents.create(
    title: "Surfing in Petersburg",
    context: "physical attributes",
    privacy: false
  )

document.versions.create(content: "Dear Abby: 'Surfing in Petersburg, Ill.' (June 17) raised good points about men who use online dating services. However, many of the things she pointed out could also be said of women who put their ads on the sites. The pickings are just as slim on our side of the fence. My hints to the 'fairer sex':

1. Don’t overdo your makeup and hair in your photos. While some makeup can enhance a lady’s look, we aren’t seeking someone who looks ready to go trick-or-treating or perform as a clown in the circus.

2. Decent men don’t want to see all of your physical attributes on these sites. Dress appropriately for your age and don’t allow the 'girls' to burst out of your low neckline.

3. Don’t start your first conversation with, 'What do you do and how much money do you make?' Intelligent men will realize that you are not as concerned with finding a quality guy as you are with looking for a fat wallet.

(4) You don’t have to speak perfectly, but the teen lingo and texting abbreviations are a real turn-off.

(5) Don’t constantly complain about your ex. It provides insight as to why he opted to break off your relationship or file for divorce.")


user = User.all.sample
document = user.documents.create(
    title: "A family entangled",
    context: "Relationship Support Letter",
    privacy: false
  )

document.versions.create(content: "I've always regarded most marital mix-ups as very humorous -- until now, that is, when the noose is tightening around my own neck. We have been married 10 years and have two sons. I like auto racing, but my wife has no interest in it, so I've always gone without her.

I've fallen for a woman with three children who is also very fond of auto racing. Her husband is ignorant and impossible. This may sound corny, but I think she would be a wonderful companion for me. I suppose you think I'm a louse -- but I am stumped. I would like to have your advice on this problem")



user = User.all.sample
document = user.documents.create(
    title: "Home Is Where The Heart Is",
    context: "tough mom",
    privacy: false
  )

document.versions.create(content: "DEAR MRS. LANDERS: I have just graduated from grade school, and the boy I like is in the Army. He has written that he will be home on leave soon, but my mother forbids me to see him. I tried to explain that we just want to see a movie and will be home early. Mother says I can't go and that I am too young to know what I am doing. Please help me.")



user = User.all.sample
document = user.documents.create(
    title: "Troubled Wife",
    context: "my marriage",
    privacy: false
  )

document.versions.create(content: "DEAR MRS. LANDERS: I've been married four years, have two children and am expecting a third soon. My husband has been chasing around town with women for the past seven months. When I told him that I was getting a separation, he promised to change his ways and behave himself. I have no money for attorneys' fees, and I cannot work. Shall I try to borrow the money from relatives, or should I wait and see what happens? -- TROUBLED WIFE")


user = User.all.sample
document = user.documents.create(
    title: "Another Chance",
    context: "my husband",
    privacy: false
  )

document.versions.create(content: "DEAR T.W.: You have every right to blow a gasket. This character does not deserve a family -- as of now. But since he has promised to mend his ways, give him another chance. Try to persuade him to go with you to a marriage counselor. See if, together, you can't find out what's gone wrong with your marriage. Let him know, too, if there is any more extramarital activity, you're giving him the heave-ho.")



user = User.all.sample
document = user.documents.create(
    title: "A New Romance",
    context: "Should I call him?",
    privacy: false
  )

document.versions.create(content: "Two months ago, I met a man who seems very fond of me. He has two jobs, which is the reason he has never called me up on the phone or taken me out. He is very busy. He says he cares for me a great deal, but I see him only once a day when he delivers food at my home. I don't want to rush him into anything. What do you think?")



user = User.all.sample
document = user.documents.create(
    title: "Long Distance Relationship",
    context: "love and marriage",
    privacy: false
  )

document.versions.create(content: "Dear Carolyn:

I am a 33-year-old single mom with an 8-year-old son. I have sole custody of my son, but by state law I cannot move more than 60 miles away from my son's father.

I've been in a wonderful four-year relationship, but he lives 360 miles away. We were together for a year before he was offered a great job and moved away. We have made our relationship work for three years while holding out hope that my son's father will allow me to move someday.

Well, I'm afraid someday is never coming. Legally unable to move, I asked my boyfriend to consider moving back. He is unwilling to quit his job or even look for a good job here. We are crazy in love with each other and want nothing more than to be married and spend the rest of our lives together. But I can't live my life in a never-ending long-distance relationship, and I would like more children.")


user = User.all.sample
document = user.documents.create(
    title: "Fear of Flying",
    context: "my husband",
    privacy: false
  )

document.versions.create(content: "Dear Carolyn:

My husband loves his parents and sister but makes no effort to see them (we live in Virginia, they are in Florida). His excuses not to visit are pretty weak, like too much work, too little money, or his fear of flying, for which he has medication. I feel he is being selfish and, after nearly 30 years of marriage, I know he will regret this after Dad and Mom are gone. Should I just get over it?")





300.times do
  comment = Version.all.sample.comments.create(body: Faker::Hacker.say_something_smart)
  User.all.sample.comments << comment
end

