class Folder

  attr_reader :name
  attr_reader :folders

  def initialize(name)
    @name = name
    @folders = []
  end

  def add_folder(folder)
    if folder.class == Folder
      @folders << folder
    else
      @folders << Folder.new(folder)
    end
  end

  def remove_folder(folder)
    if folder.class == Folder
      @folders.delete_if { |f| f.name == folder.name }
    else
      @folders.delete_if { |f| f.name == folder }
    end
  end

  def print(containment_char = "")
    if containment_char.empty?
      puts @name
    else
      puts "#{containment_char} #{@name}"
    end
    @folders.each { |f| f.print("-") }
  end

end

home = Folder.new('home')
home.add_folder('downloads')
home.add_folder('photos')
desktop = Folder.new('desktop')
desktop.add_folder(Folder.new('work'))
home.add_folder(desktop)

home.print
puts ""

home.remove_folder('photos')

home.print
