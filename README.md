# CaptureStd

Add `capture` to Kernel.

## Installation

Add this line to your application's Gemfile:

    gem 'capture_std'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capture_std

## Usage

capture
```

stdout = capture(:stdout) do
  puts "message"
end

stdout # => "message\n"


stderr = capture(:stderr) do
  warn "error message"
end

stdout # => "error message\n"
```

## Contributing

1. Fork it ( http://github.com/izumin5210/capture_std/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
