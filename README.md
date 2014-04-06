# Tech Books Deals of the Day

This is the source code that runs http://techbooksdotd.herokuapp.com. It's written in Ruby and runs on Sinatra, using Haml for the views. It's pretty simple--look at `techbooksdotd.rb` for all controller logic.

## To Run

You must have Ruby 2.x (last tested using Ruby 2.1.1) and Bundler installed on your machine.

Clone the repo to your local machine. Change to that directory and run:

`bundle install`

After Bundler does its work, run:

`rackup -p 4567`

Now, open a browser to [http://localhost:4567](http://localhost:4567) to see the app.

## Thanks

Thanks to Vance ([https://github.com/aroc725](https://github.com/aroc725)) for adding Peachpit. This code also was repurposed for InformIT to display the InformIT book's cover instead of the InformIT logo.

## License

Tech Books Deals of the Day is released under the Eclipse Public License 1.0.
See LICENSE for details.
