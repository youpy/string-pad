# encoding: utf-8

if RUBY_VERSION =~ /^1\.8/
  $KCODE = 'u'
end

class String
  ZERO_WIDTH_CHARS = [
    0x200b,
    0x200c,
    0x200d,
    0x200e,
    0x200f,
    0x202a,
    0x202b,
    0x202c,
    0x202d,
    0x202e,
    0x2060,
    0x2061,
    0x2062,
    0x2063,
    0x2064,
    0x2066,
    0x2067,
    0x2068,
    0x2069,
    0x206a,
    0x206b,
    0x206c,
    0x206d,
    0x206e,
    0x206f
  ]

  def pad(size)
    orig_size = split(//).size
    padding = (0...(size - orig_size)).to_a.map { ZERO_WIDTH_CHARS.sort_by { rand }.first }.pack('U*')
    padding + self
  end
end
