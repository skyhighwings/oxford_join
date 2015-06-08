class Array
  def oxford_join sep='and'
    return self.join(' ' + sep + ' ') if length <= 2

    init = self[0..-2]
    last = self[-1]

    [init.join(', '), last].join(', ' + sep + ' ')
  end
end
