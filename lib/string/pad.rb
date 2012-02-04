# encoding: utf-8

if RUBY_VERSION =~ /^1\.8/
  $KCODE = 'u'
end

class String
  def pad(size)
    orig_size = split(//).size
    padding = (0...(size - orig_size)).to_a.map { [0x200b, 0x200c].sort_by { rand }.first }.pack('U*')
    padding + self
  end
end
