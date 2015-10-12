class Factory

  def self.create_class(class_name)
    case class_name
    when 'subklass1'
      return SubKlass1.new
    when 'subklass2'
      return SubKlass2.new
    end
  end

end

class ParentKlass

  def do_this
    puts "Doing this..."
  end

  def do_that
    puts "Doing that..."
  end

end

class SubKlass1 < ParentKlass
end

class SubKlass2 < ParentKlass
end

klass = Factory.create_class 'subklass1'
klass.do_this
klass.do_that

klass = Factory.create_class 'subklass2'
klass.do_this
klass.do_that
