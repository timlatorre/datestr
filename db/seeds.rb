Answer.delete_all
Match.delete_all
Message.delete_all
Photo.delete_all
Question.delete_all
User.delete_all

u1 = User.create(:username => 'Johnny', :password => '123', :password_confirmation => '123', :email => 'johnny@depp.com', :tagline => "There's nothing like pirate booty!", :age => '49', :gender => 'male', :preference => 'women', :city => 'Los Angeles', :state => 'CA', :ethnicity => 'white', :description => "I've been acting since I was twenty. Now I live in Europe. How cool is that?")
q1 = Question.create( :question_text => 'What is your favorite foreign language?')
a1 = Answer.create(:answer_text => 'French', :is_correct => 't')
a2 = Answer.create(:answer_text => 'Spanish', :is_correct => 'f')
a3 = Answer.create(:answer_text => 'German', :is_correct => 'f')
u1.questions << q1
q1.answers = a1, a2, a3
q2 = Question.create( :question_text => 'Which of the following poets do you prefer?')
a4 = Answer.create(:answer_text => 'Yates', :is_correct => 't')
a5 = Answer.create(:answer_text => 'Shelley', :is_correct => 'f')
a6 = Answer.create(:answer_text => 'Wilde', :is_correct => 'f')
u1.questions << q2
q2.answers = a4, a5, a6

u2 = User.create(:username => 'Jon', :password => '123', :password_confirmation => '123', :email => 'jon@stewart.com', :tagline => "Here's your moment of zen.", :age => '50', :gender => 'male', :preference => 'women', :city => 'New York', :state => 'NY', :ethnicity => 'white', :description => "I like making fun of politics. I make fun of a lot of things, but I would never make fun of you.")
q3 = Question.create( :question_text => 'Which of the following do you think was the better president?')
a7 = Answer.create(:answer_text => 'Barack Obama', :is_correct => 't')
a8 = Answer.create(:answer_text => 'Ronald Reagan', :is_correct => 'f')
a9 = Answer.create(:answer_text => 'George W. Bush', :is_correct => 'f')
u2.questions << q3
q3.answers = a7, a8, a9
q4 = Question.create( :question_text => 'Which is your favorite Amendment to the Constitution')
a10 = Answer.create(:answer_text => '1st - Freedom of Speech', :is_correct => 't')
a11 = Answer.create(:answer_text => '2nd - Right to Bear Arms', :is_correct => 'f')
a12 = Answer.create(:answer_text => '13th - Abolishment of Slavery', :is_correct => 'f')
u2.questions << q4
q4.answers = a10, a11, a12

u3 = User.create(:username => 'Olivia', :password => '123', :password_confirmation => '123', :email => 'olivia@munn.com', :tagline => "I'm hot and I'm smart", :age => '32', :gender => 'female', :preference => 'men', :city => 'Los Angeles', :state => 'CA', :ethnicity => 'white', :description => "I can shoot a gun in a dress better than any man in pants. Now if he's wearing a dress, that might be a challenge. ")
q5 = Question.create( :question_text => 'What was the most important technology event in human history?')
a13 = Answer.create(:answer_text => 'Electricity and the Light Bulb', :is_correct => 't')
a14 = Answer.create(:answer_text => 'Printing Press', :is_correct => 'f')
a15 = Answer.create(:answer_text => 'iPhone', :is_correct => 'f')
a16 = Answer.create(:answer_text => 'The Wheel', :is_correct => 'f')
u3.questions << q5
q5.answers = a13, a14, a15, a16
q6 = Question.create( :question_text => 'Which is my favorite word?')
a17 = Answer.create(:answer_text => 'Onomatopoeia', :is_correct => 't')
a18 = Answer.create(:answer_text => 'Moist', :is_correct => 'f')
a19 = Answer.create(:answer_text => 'Kerfuffle', :is_correct => 'f')
u3.questions << q6
q6.answers = a17, a18, a19

u4 = User.create(:username => 'Zooey', :password => '123', :password_confirmation => '123', :email => 'zooey@deschanel.com', :tagline => "I like colors and flowers.", :age => '33', :gender => 'female', :preference => 'men', :city => 'Los Angeles', :state => 'CA', :ethnicity => 'white', :description => "I'm an actress, but not an airhead. I'm a vegan, but won't force you to be one. I like word games.")
q7 = Question.create( :question_text => 'Which of the following bands is your favorite?')
a20 = Answer.create(:answer_text => 'She & Him', :is_correct => 't')
a21 = Answer.create(:answer_text => 'Arcade Fire', :is_correct => 'f')
a22 = Answer.create(:answer_text => 'B.O.B', :is_correct => 'f')
a23 = Answer.create(:answer_text => 'Vampire Weekend', :is_correct => 'f')
u4.questions << q7
q7.answers = a20, a21, a22, a23
q8 = Question.create( :question_text => 'Which of the following films is your favorite?')
a24 = Answer.create(:answer_text => 'Almost Famous', :is_correct => 't')
a25 = Answer.create(:answer_text => 'Texas Chainsaw Massacre', :is_correct => 'f')
a26 = Answer.create(:answer_text => 'The Hangover', :is_correct => 'f')
u4.questions << q8
q8.answers = a24, a25, a26