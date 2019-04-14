
-- Access the Lightroom SDK namespaces.
local LrDialogs = import 'LrDialogs'
local LrApplication = import 'LrApplication'
local LrTasks = import 'LrTasks'

local catalog = LrApplication.activeCatalog()

local function createCollectionsByName(smugmug, parent, collections)
	for i,v in ipairs(collections) do
		local smart = {
         criteria = "collection",
         operation = "==",
         value = v:getName(),
     };
		smugmug:createPublishedSmartCollection(v:getName(), smart, parent, true);
	end
end

local function createSets(smugmug, parent, sets)
	for i,v in ipairs(sets) do
		set = smugmug:createPublishedCollectionSet(v:getName(), parent, true);
		createCollectionsByName(smugmug, set, v:getChildCollections());
		createSets(smugmug, set, v:getChildCollectionSets());
	end
end


LrTasks.startAsyncTask( function()
	local services = catalog:getPublishServices()

-- Find the smugmug plugin
	local smugmug = nil;
	for i,v in ipairs(services) do
		if string.match(v:getPluginId(), "smugmug") then
			smugmug = v;
		end
	end
-- List all folders/collections
	local sets = catalog:getChildCollectionSets();

	local coll = catalog:getChildCollections();

-- Recursively create all child sets and their children sets/collections
	catalog:withWriteAccessDo("Sync to SmugMug Plugin", function()
					createCollectionsByName(smugmug, nil, coll);
					createSets(smugmug, nil, sets);
				end )
end )
