# Tech Books Deals of the Day

This is the source code that runs http://techbooksdotd.herokuapp.com.
It's written in Ruby and runs on Sinatra, using Haml for the views.
It's pretty simple--look at techbooksdotd.rb for all controller logic.

I wrote this to save me from having to check the Apress, Manning, and O'Reilly
sites daily for their book deals.

## To Run

You must have Ruby 2.x (last tested using Ruby 2.1.1) and Bundler installed on your machine.

Clone the repo to your local machine. Change to that directory and run:

`bundle install`

After Bundler does its work, run:

`rackup -p 4567`

Now, open a browser to [http://localhost:4567](http://localhost:4567) to see the app.

## License

Tech Books Deals of the Day is released under the Eclipse Public License 1.0.
See LICENSE for details.
