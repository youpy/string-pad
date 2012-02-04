# encoding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'String#pad' do
  subject do
    'aaa あいうえお zzz'
  end

  it 'should pad' do
    size(subject.pad(30)).should eql(30)

    # http://www.metareal.org/2007/11/18/ruby-needs-unicode-regular-expressions/
    size(subject.pad(30).gsub(/#{"[#{[0x200b].pack('U')}#{[0x200c].pack('U')}]"}/u, '')).should eql(13)
  end

  it 'should not pad if original size is longer than padding size' do
    size(subject.pad(10)).should eql(13)
  end

  it 'should pad left' do
    subject.pad(30).split(//).first.should_not eql('a')
  end

  def size(str)
    str.split(//).size
  end
end
