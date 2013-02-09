# Sasspectations

Sasspectations is a rspec like spec runner for SCSS.

## Installation

Add this line to your application's Gemfile:

    gem 'sasspectations'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sasspectations

## Usage

Drop you Sasspectations specs into spec/scss and run:

    $ rake sasspectations:run

Or you can specify a path, for example if you had your specs in examples/spec/scss:

    $ rake sasspectations:run\[examples\]

### Writing Sasspectations Specs
All Sasspectations specs are written in SCSS.


## Acknowledgements/Thanks
Much thanks to the folks who built [Sassquatch](https://github.com/d-i/Sassquatch), without their inital work this wouldn't have been possiable. Many of their ideas were used in this project.



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
