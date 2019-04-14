return {
	
	LrSdkVersion = 3.0,
	LrSdkMinimumVersion = 1.3, -- minimum SDK version required by this plug-in

	LrToolkitIdentifier = 'com.maxsumrall.smugmugsync',

	LrPluginName = LOC "$$$/SmugMugSync/PluginName=Smug Mug Sync",
	
	-- Add the menu item to the File menu.
	
	LrExportMenuItems = {
		title = "Sync collections to Smugmug publisher",
		file = "smugmugsync.lua",
	},

	VERSION = { major=8, minor=0, revision=0, build=1193777, },
}
