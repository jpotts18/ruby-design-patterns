## Composite

The composite pattern is a structural pattern and easiest to remember as a creating a tree.

![](tree.png)

Composite pattern is used where we need to treat a group of objects in similar way as a single object. Composite pattern composes objects in term of a **tree structure** to represent part as well as whole hierarchy.

This pattern creates a class that contains group of its own objects. This class provides ways to modify its group of same objects.

To demonstrate the use of the composite pattern we will implement a folder structure that is common on most file systems.

The following folder structure will be created:

```bash
home
- desktop
- downloads
- - movies
- - audio
- photos
```

Each folder must have the following methods:

* `Folder#initialize(name)`
* `Folder#add_folder(name)`
* `Folder#remove_folder(name)`
* `Folder#print()`

### Notes

* Maintaining a reference to the parent can be helpful for better performance. Think about depth searches.
* Example: XML Parser - Nokogiri
* Example: UI - Views with Subviews
* `get_children` or `get_parent` methods
