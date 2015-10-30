# Q0: Why is this error being thrown?
The homecontroller references a Pokemon model which has not been created yet.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The routes file directs the homepage to the home_controller. The controller sets trainerless_pokemon to a list containing exactly that. @pokemon is then set to a random pokemon selected from that list and is then displayed on the home view. The possible pokemon are all trainerless.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The button leads to capture path which requires patch, looking for "/patch".
# Question 3: What would you name your own Pokemon?
Johncena.
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
The trainer instance connected to the given id. This is what lniks path/route of the given trainer to the id that is found in params for that specific trainer.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
Failing to validate will place an error in flash[:error] which is then placed in the UI view. We can see this in views/layouts/_messages.html. In applicatoin.html.erb it renders the layout to the view so that we can see the message.
# Give us feedback on the project and decal below!
Niceu work team.
# Extra credit: Link your Heroku deployed app
