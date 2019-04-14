# SmugMugSync

I created this plugin to help me organise my Lightroom collections. Its frustrating to have different collections in the collections pane and to need to also create them in the Smugmug publisher pane, when I just want to have all my photos published and uploaded to Smugmug. 


# How it works

This plugin will iterate over all collections and collection sets in your catalog and create a published smart collection or published collection set in the Smugmug plugin with the same name. It will do this recursively for your sets, and the sets in your sets. 


## Important points
1. The plugin will _upset_ sets and collections, only creating them if they do not already exist in the smugmug plugin. 
2. The plugin makes _published smart collections_ and syncs the photos from the collection to new matching smugmug collection. 


## Suggested usage
Organize all your photos into collections and sets, then use the plugin. Anytime you add photos to those collections, they will automatically be synced to the smugmug collection matching it, thanks to the smart collection rules. Anytime you add new collections or sets, re-run the plugin. 


## Notes

1. A collection is a Lightroom concept. The smugmug plugin is a _publisher_. Collections and sets created in the smugmug publisher are called _"published collections"_ and so forth. 

2. The plugin does not delete anything. If you remove collections or sets, they will need to be removed yourself from the smugmug plugin. 
