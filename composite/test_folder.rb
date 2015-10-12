require 'test/unit'
require_relative 'folder'

class TestFolder < Test::Unit::TestCase

  def test_folder_has_name
    folder = Folder.new('squirkel')
    assert_equal('squirkel', folder.name)
  end

  def test_folder_add_sub_folders
    folder = Folder.new('home')
    folder.add_folder('desktop')
    assert_equal(1, folder.folders.count)
    assert_equal('desktop', folder.folders.first.name)
  end

  def test_folder_remove_sub_folders
    folder = Folder.new('home')
    folder.add_folder('desktop')
    assert_equal(1, folder.folders.count)
    folder.remove_folder('desktop')
    assert_equal(0, folder.folders.count)
  end

  def test_folder_print_name
    folder = Folder.new('home')
    folder.add_folder('desktop')
    folder.add_folder('downloads')
    folder.print
  end

end
