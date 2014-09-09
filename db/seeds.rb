
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
    title: "Debating Ukraine’s Fate",
    context: "Letter to the editor about Ukraine",
    privacy: false
  )

document.versions.create(content: "Re: 'Arm Ukraine or surrender' (Opinion, Sept. 1) by Ben Judah: How does one decide when to help the government and when to help the rebels? What criteria do we use? Why are we in a better position to make that call than the people of Ukraine? What right do we have to make that call?

We should follow the principle that President Obama has tried to follow: Absent treaty obligations, do not get involved in other countries’ civil wars or internal disputes unless American national security interests are threatened. That would save American lives, which seems to me to be a pretty smart foreign policy.")


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
    title: "Lines Blur With Inspiration and Theft",
    context: "Who Owns Fashion?",
    privacy: false
  )

document.versions.create(content: "Designers have the arduous task of making sure that each season's collection breaks new ground, but they often pull on previous trends for inspiration. The 1960s and '70s are back this year, for example, in the prints and textiles of the Creatures of the Wind collection. But when does 'inspiration' become duplication, the theft of a previous design?

Designers often pull on earlier trends for inspiration. But when does 'inspiration' become duplication, the theft of a previous design?

The line is blurry, to put it mildly. Fashion designers borrow constantly from each other. Earlier this year, Margherita Missoni, heiress to the Missoni fashion house, called out Michael Kors for copying her family’s trademark zigzag prints. In June, Karl Lagerfeld was slapped with a copyright infringement lawsuit by New Balance for nearly identical sneakers.

Designers also pull from the world around them. Moschino took clear inspiration from Spongebob Square Pants and McDonald’s in its fall collection. And a new lawsuit was just filed against Roberto Cavalli by California street artists for the brand’s incorporation of their work.

Meanwhile, the latest trends move into the stores of fast fashion retailers like H&M, Zara and Forever 21, which churn out similar styles for down-market consumption. Consumers don’t lose a wink of sleep over purchasing derivative works — after all, it’s a bargain.

But this landscape is quite different for small fashion houses and young designers, who struggle to brand themselves with distinctive designs before they are copied.

Intellectual property laws generally do not protect utilitarian items like clothing, although some original prints, patterns, colors and unique combinations can be protected by copyright.

The latest effort to reform the complex legal system of fashion copyrights, trademarks and patents was United States Senator Charles Schumer's 2012 bill to protect original elements and arrangements that 'provide a unique, distinguishable, non-trivial and non-utilitarian variation over prior designs' for three years each. The bill was not approved.

Now it remains to be seen whether the protection of fashion designs and the openness that lets designers take inspiration from each other can find a legal balance.")


user = User.all.sample
document = user.documents.create(
    title: "Many Feel Trapped by Work",
    context: "Why Don’t Americans Take Vacation?",
    privacy: false
  )

document.versions.create(content: "It's not by accident that the United States has been called the 'no-vacation nation.' Vacations in the U.S. are among the shortest in the world, and a quarter of American workers get no paid vacation leave at all. Then, to add insult to injury, surveys find that 40 percent of us leave vacation days unused – three to seven days on average. Why do we do it?

It's up to business leaders to see the value of vacations for their employees, give them time off and encourage them to take it.
First, there is fear. In tough economic times, especially during the recent recession, many people sense that they will be seen as slackers, unwilling to give 100 percent to their jobs. They worry about being first on the list if new layoffs come.

Secondly, many workers tell me time off just isn't worth it. Sure, vacations are fun, but so much work piles up at the office while they are gone, they are already stressing about the upcoming load before their vacations have ended. Yes, they were stressed before they left, but now the feeling has doubled. No one has been assigned to replace them while they are gone. By contrast, Europeans cross-train employees so they can pick up for each other during holidays.

Finally, some employers won't even let workers take the time they are owed. In Jacksonville, Fla., a hotel clerk told me her vacation had been cancelled for seven years in a row because the company had no one to replace her. When I asked how they could do that given her contract, she said they simply paid her extra. She needed the time even more than the money, she said. But the choice was not hers.

A new Nielsen poll commissioned by Diamond Resorts International finds that 71 percent of American workers who regularly take vacations are satisfied with their jobs. Among those who don't, only 46 percent are satisfied. It's up to business leaders to see the value of vacations for their employees, give them time off and encourage them to take it.")


user = User.all.sample
document = user.documents.create(
    title: "Dear Abby",
    context: "Your physical attributes",
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
    title: "Project Gutenberg",
    context: "Present number of computer users",
    privacy: false
  )

document.versions.create(content: "We produce about two million dollars for each hour we work. The time it takes us, a rather conservative estimate, is fifty hours to get any etext selected, entered, proofread, edited, copyright searched and analyzed, the copyright letters written, etc.  This projected audience is one hundred million readers.  If our value per text is nominally estimated at one dollar then we produce $2 million dollars per hour this year as we release fifty new Etext files per month, or 500 more Etexts in 2000 for a total of 3000+ If they reach just 1-2% of the world's population then the total should reach over 300 billion Etexts given away by year's end.

The Goal of Project Gutenberg is to Give Away One Trillion Etext Files by December 31, 2001.  [10,000 x 100,000,000 = 1 Trillion] This is ten thousand titles each to one hundred million readers, which is only about 4% of the present number of computer users.

At our revised rates of production, we will reach only one-third of that goal by the end of 2001, or about 3,333 Etexts unless we manage to get some real funding.

The Project Gutenberg Literary Archive Foundation has been created to secure a future for Project Gutenberg into the next millennium.

We need your donations more than ever!

Presently, contributions are only being solicited from people in: Colorado, Connecticut, Idaho, Indiana, Iowa, Kentucky, Louisiana, Massachusetts, Nevada, Montana, Nevada, Oklahoma, South Carolina, South Dakota, Texas, Vermont, and Wyoming.

As the requirements for other states are met, additions to this list will be made and fund raising will begin in the additional states.")


user = User.all.sample
document = user.documents.create(
    title: "Senator Nixon’s Checkers Speech",
    context: "Text of Senator Richard Nixon’s Checkers speech",
    privacy: false
  )

document.versions.create(content: "My Fellow Americans:
I come before you tonight as a candidate for the Vice Presidency and as a man whose honesty and integrity have been questioned.
The usual political thing to do when charges are made against you is to either ignore them or to deny them without giving details.
I believe we’ve had enough of that in the United States, particularly with the present Administration in Washington, D.C. To me the office of the Vice Presidency of the United States is a great office and I feel that the people have got to have confidence in the integrity of the men who run for that office and who might obtain it.
I have a theory, too, that the best and only answer to a smear or to an honest misunderstanding of the facts is to tell the truth. And that’s why I’m here tonight. I want to tell you my side of the case.
I am sure that you have read the charge and you’ve heard that I, Senator Nixon, took $18,000 from a group of my supporters.
Now, was that wrong? And let me say that it was wrong—I’m saying, incidentally, that it was wrong and not just illegal. Because it isn’t a question of whether it was legal or illegal, that isn’t enough. The question is, was it morally wrong?
I say that it was morally wrong if any of that $18,000 went to Senator Nixon for my personal use. I say that it was morally wrong if it was secretly given and secretly handled. And I say that it was morally wrong if any of the contributors got special favors for the contributions that they made.
And now to answer those questions let me say this:
Not one cent of the $18,000 or any other money of that type ever went to me for my personal use. Every penny of it was used to pay for political expenses that I did not think should be charged to the taxpayers of the United States.
It was not a secret fund. As a matter of fact, when I was on 'Meet the Press,' some of you may have seen it last Sunday—Peter Edson came up to me after the program and he said, “Dick, what about this fund we hear about?” And I said, 'Well, there’s no secret about it. Go out and see Dana Smith, who was the administrator of the fund.'
And I gave him his address, and I said that you will find that the purpose of the fund simply was to defray political expenses that I did not feel should be charged to the Government.
And third, let me point out, and I want to make this particularly clear, that no contributor to this fund, no contributor to any of my campaign, has ever received any consideration that he would not have received as an ordinary constituent.
I just don’t believe in that and I can say that never, while I have been in the Senate of the United States, as far as the people that contributed to this fund are concerned, have I made a telephone call for them to an agency, or have I gone down to an agency in their behalf. And the records will show that, the records which are in the hands of the Administration.
But then some of you will say and rightly, 'Well, what did you use the fund for, Senator? Why did you have to have it?'
Let me tell you in just a word how a Senate office operates. First of all, a Senator gets $15,000 a year in salary. He gets enough money to pay for one trip a year, a round trip that is, for himself and his family between his home and Washington, D.C.")


user = User.all.sample
document = user.documents.create(
    title: "Biodiversity Conservation in the REDD",
    context: "Carbon Balance and Management 2010",
    privacy: false
  )

document.versions.create(content: "Carbon emissions from deforestation and forest degradation contribute 12-20% of anthropogenic global greenhouse gas (GHG) emissions annually [1,2], primarily from the tropics [3]. Tropical countries also harbour over half (51.1%) of the world's 48,170 threatened species [4], raising the possibility that reducing GHG emissions by curtailing tropical deforestation might also provide valuable co-benefits for biodiversity conservation [5]. Here we explore potential biodiversity impacts of anticipated emission reduction strategies in Indonesia, the world's third largest source of GHG emissions [6] and among the most species-rich countries in the world. We address calls in this journal [7,8] and elsewhere [9-11] for a stronger regulatory framework governing emission reduction strategies in forests to ensure that biodiversity co-benefits are achieved. We caution that in Indonesia and other tropical countries, pursuing emission reduction strategies in forests without such a framework may worsen, not enhance, long-term biodiversity conservation.

The Reducing Emissions from forest Degradation and Deforestation (REDD) scheme of the post-Kyoto UN Framework Convention on Climate Change (UNFCCC) treaty seeks to involve developing countries in global GHG reduction efforts by creating financial incentives to improve forest management and protection [12]. Under REDD, and its derivative REDD+, which recognizes forest carbon stock enhancements (sequestration) from improved conservation and sustainable management of forests, developing countries that reduce forest based emissions below an established 'business as usual' projection will be rewarded through payments from donor funds or market sale of emission reduction credits.

REDD clearly provides an opportunity for biodiverse, carbon-rich tropical countries to protect threatened biodiversity as a co-benefit of maintaining forests and the carbon they store [11,13]. However, it remains unclear how biodiversity provisions will be included within REDD, raising questions about the extent to which it will improve biodiversity conservation over the long-term [5,14,15]. Estimated terrestrial carbon and biodiversity are positively correlated globally [11], but this pattern does not necessarily hold at sub-national scales where REDD will typically be implemented. This raises concern that preferential targeting of carbon-rich ecosystems may intensify pressures on relatively carbon-poor ecosystems that nevertheless support equal or greater levels of biodiversity [15-17].")


user = User.all.sample
document = user.documents.create(
    title: "Maternal low glycaemic index diet",
    context: "Secondary analysis from the ROLO study",
    privacy: false
  )

document.versions.create(content: "The in utero environment has been found to affect fetal development in a variety of ways from cognitive development [1] to development of the fetal organs [2] to growth and fat deposition [3]. Environmental factors to which the pregnant woman is exposed result in epigenetic changes which impact on fetal genetic transcription and affect the fetus differently depending on the stage of pregnancy [2,4,5]. The maternal diet during pregnancy is particularly important as the mother is relied on to provide all of the nutrients required for the fetus to grow and develop [6], however maternal pre-pregnancy nutritional status and lifestyle have also been found to be important [7]. Pre-pregnancy overweight and obesity as well as excessive gestational weight gain have been found to result in fetal macrosomia i.e. a birthweight of ≥4 kg [7]. Macrosomic infants are at increased risk of developing metabolic syndrome in later life and this effect may persist in later generations through intergenerational programming [8]. Macrosomia also increases obstetric risks such as shoulder dystocia, maternal anal sphincter injury, instrumental vaginal delivery and emergency caesarean section [9].

The hyperglycaemia-hyperinsulinism theory proposes that the mother’s intake of carbohydrate and her natural pregnancy-related progressive insulin insensitivity results in higher levels of maternal blood glucose which is transferred to the fetus [10]. In response, the fetus produces its own insulin which then acts as a growth hormone resulting in increased fetal growth and adiposity [9,10]. Studies support this hypothesis during gestational diabetes [11] and also within normal limits of maternal blood glucose [12]. As such it is important for maternal blood glucose levels to be maintained within normal levels to ensure fetal glucose levels, and subsequent insulin levels are also maintained within normal ranges.

Other dietary factors including maternal dietary energy and protein intake have also been found to influence neonatal anthropometry [13-15] while the quality of macronutrients also appears to have a role, in particular the quality of fat i.e. saturated or trans-fat vs polyunsaturated fat intake [16,17] and the type of protein i.e. dairy vs meat protein [18]. Maternal micronutrient intakes also affect neonatal body composition however even less data is available in this area except in the area of deficiency and supplementation in the developing world in order to reduce preterm birth and small for gestational age infants [19,20]. Therefore, this study focuses on the association between maternal macronutrient intake throughout pregnancy and neonatal body composition. The relationship between neonatal size and maternal dietary intake is not clear cut since, in addition to diet, a variety of maternal characteristics and lifestyle factors including physical activity, socioeconomic and demographic status, stress, smoking, alcohol consumption and other drug intake as well as genetic factors also affect fetal growth and development [4,21-23]. Due to the complex nature of the determinants of neonatal size and adiposity and the fact that the most commonly reported anthropometric parameters 'weight' and 'length' are very limited measures of adiposity which give no information on body fat distribution [24] there remains a paucity of data in the area. The aim of this study was to use a cohort from the ROLO (Randomised cOntrol trial of LOw glycaemic index diet versus no dietary intervention to prevent recurrence of fetal macrosomia) study to examine the effect of maternal body composition, demographic characteristics, macronutrient intake and lifestyle both pre-pregnancy and throughout pregnancy on neonatal weight and adiposity.")


user = User.all.sample
document = user.documents.create(
    title: "The Works of Flavius Josephus",
    context: "He predicted that Vespasian would become the ruler of the 'entire world",
    privacy: false
  )

document.versions.create(content: "Josephus was born Joseph ben Mattathias in 37 C.E. in Jerusalem of a priestly and royal family. He excelled in his studies of Jewish law and studied with the Sadducees, Pharisees, and the Essenes, eventually aligning himself with the Pharisees. In 62 C.E. he went to Rome to free some imprisoned priests. After accomplishing this mission through the intercession of Nero's wife, Poppaea, he returned to Jerusalem in 65 C.E. to find the country in revolt against Rome.

Although Josephus had deep misgivings about the revolt, it became inevitable, due to reasons he discusses in his history, primarily the abuses of the Romans; this spurred the growth of fanatical Messianic Jewish movements which believed that the world was coming to an end shortly. In 66 C.E. the Masada was seized by the Zealots and the Romans were on the march; Josephus was appointed the commander of Galilee.

Josephus had to fight a defensive war against overwhelming force while refereeing internecine squabbles in the Jewish ranks. In 67 C.E. Josephus and other rebels were cornered in a cave during the siege of Jotapata and took a suicide pact. However, Josephus survived, and was taken hostage by the Romans, led by Vespasian.

Josephus shrewdly reinterpreted the Messianic prophecies. He predicted that Vespasian would become the ruler of the 'entire world'. Josephus joined the Romans, for which he was branded a traitor. He acted as consultant to the Romans and a go-between with the revolutionaries. Unable to convince the rebels to surrender, Josephus ended up watching the second destruction of the Temple and the defeat of the Jewish nation.

His prophecy became true in 68 C.E. when Nero committed suicide and Vespasian became Ceasar. As a result, Josephus was freed; he moved to Roman and became a Roman citizen, taking the Vespasian family name Flavius. Vespasian commissioned Josephus to write a history of the war, which he finished in 78 C.E., the Jewish War. His second major work, the Antiquities of the Jews, was completed in 93 C.E. He wrote Against Apion in about 96-100 C.E. and The Life of Josephus, his autobiography, about 100. He died shortly after.

Despite his ambivalent role, Josephus was an eyewitness to history, and his writings are considered authoritative. These texts are key to understanding a pivotal point in world history, which has tragic repercussions even to this day.")



300.times do
  comment = Version.all.sample.comments.create(body: Faker::Hacker.say_something_smart)
  User.all.sample.comments << comment
end











