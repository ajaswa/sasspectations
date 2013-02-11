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

For example if you have a SCSS function that adds two numbers together and wanted to test it you might set something up like this:

add_numbers.scss:

```scss
@fuction add-numbers( $a, $b ) {
  @return $a+$b;
}
```

add_numbers_spec.scss:

```scss
spec-for-adding-numbers {
  @import: 'path/to/add_numbers.scss';
  add-six-ten {
    expect: to-equal( add-numbers(6,10), 16 );
  }
}
```


## Credits

![Factory Code Labs](http://i.imgur.com/yV4u1.png)

Sasspectataions is maintained by [Factory Code Labs](http://www.factorycodelabs.com). Huge thanks to [@jtrim](https://github.com/jtrim/) and[@InAbsentia](https://github.com/InAbsentia/) for assistance in getting Sass under control.

Much thanks to the folks who built [Sassquatch](https://github.com/d-i/Sassquatch), without their inital work this wouldn't have been possiable. Many of their ideas were used in this project.
