class Fixnum
  def closest_fibonacci
    (return nil) if self < 0
    fn = 0
    fn1 , fn2 = 0 , 1
    if self == 0
      return nil
    elsif self == 1
      return 0
    else
      while self > fn
        fn = fn1 + fn2
        fn1, fn2   = fn2, fn
      end
    end
    fn1
  end
end