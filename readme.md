# Mustached Ironman
This is a quick project for me to play around with a few rails technologies on the side.  The premise of the application is simple:
* I have a friend who likes movies but has not seem a lot of movies
* I want my friends to log in to this application via facebook and recommend movies
* Movie recommendations will be brought in via IMDB
* The friends will be able to vote up or down a recommended movie
* Each week my friend will watch the movie at the top of his list and mark it off.

Easy peasy right?

Here's some other features that I may put in(just to have an excuse to try it):
* Backbone JS for the voting and the marking a movie as watched
* Ability for users to be notified of the "Friends" review of the movie after he watches it
* Ability to comment on recommendations when voting
* Ranking of votes(ie. If user a has voted a movie up and that the primary friend recommends, then his "votes" will count for more in the future)


# App Setup
There is a rake task app:dev:prime which will set up development data to play around with
