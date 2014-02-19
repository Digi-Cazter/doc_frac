# DocFrac

This gem uses the DocFrac unix utility for doing document conversion. Converts between RTF, HTML and text documents.

[DocFrac Website](http://docfrac.net/wordpress/)

I created this gem really quick for a need I had, please feel free to contribute to make it better.

## Installation

Add this line to your application's Gemfile:

    gem 'doc_frac'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install doc_frac

## Usage

    @document = DocFrac::Convert.new(:from_rtf, :to_html)
    @document.text = "rtf text"
    @document.convert

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
