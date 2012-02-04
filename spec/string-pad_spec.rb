# encoding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'String#pad' do
  subject do
    'aaa あいうえお zzz'
  end

  it 'should padding a string' do
    subject.pad(30).size.should eql(30)
    subject.pad(30).gsub(/[\u200b\u200c]/, '').size.should eql(13)
  end

  it 'should not padding if original size is longer than padding size' do
    subject.pad(10).size.should eql(13)
  end

  it 'should padding left' do
    subject.pad(30).split(//).first.should_not eql('a')
  end
end
