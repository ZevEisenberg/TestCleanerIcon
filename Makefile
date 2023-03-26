samples = 4096

render:
	# Note: this seems to output light and dark modes swapped, and I don't know why.
	/Applications/Blender.app/Contents/MacOS/Blender \
	-b ./TestCleaner\ Icon.blend \
	--python-expr "import bpy; bpy.data.scenes[\"Dark Mode\"].cycles.samples = $(samples); bpy.data.scenes[\"Light Mode\"].cycles.samples = $(samples)" \
	--scene Dark\ Mode -o //Renders/TestCleaner\ Render\ xx\ Dark\ Mode -a \
	--scene Light\ Mode -o //Renders/TestCleaner\ Render\ xx\ Light\ Mode -a

	mv Renders/TestCleaner\ Render\ xx\ Dark\ Mode0000.tif Renders/TestCleaner\ Render\ xx\ Dark\ Mode.tif
	mv Renders/TestCleaner\ Render\ xx\ Light\ Mode0000.tif Renders/TestCleaner\ Render\ xx\ Light\ Mode.tif
