require 'spec_helper'

describe CaptureStd do
  it 'should have a version number' do
    CaptureStd::VERSION.should_not be_nil
  end
end

describe Kernel do
  describe '#capture' do
    let(:msg) { "test message for stream output"}
    context 'w/o parameter' do
      it 'return stdout' do
        expect(capture { print msg }).to eq msg
      end
    end

    context 'w/ :stdout' do
      it 'return stdout' do
        expect(capture(:stdout) { print msg }).to eq msg
      end
    end

    context 'w/ :stderr' do
      it 'return stderr' do
        expect(capture(:stderr) { warn msg }).to eq "#{msg}\n"
      end
    end

    context 'w/ invalid parameter' do
      it 'raise TypeError' do
        expect{capture(:foobar) { print msg }}.to raise_error(TypeError, 'Invalid parameter')
      end
    end
  end
end

