require "capture_std/version"
require "tempfile"

module CaptureStd
  def self.capture(stream=:stdout)
    captured_stream = Tempfile.new(stream.to_s)
    io = eval("$#{stream}")
    origin_io = io.dup
    io.reopen(captured_stream)

    yield

    io.rewind
    captured_stream.read
  rescue TypeError
    raise TypeError,"Invalid parameter"
  ensure
    captured_stream.close
    captured_stream.unlink
    io.reopen(origin_io) unless origin_io.nil?
  end
end
