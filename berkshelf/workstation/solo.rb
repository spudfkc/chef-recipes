root = File.absolute_path(File.dirname(__FILE__))

file_cache_path root
cookbook_path [
	root + "/cookbooks",
	"/home/ncc/chef/cookbooks"
]
json_attribs root + "/node.json"
role_path root + '/roles'
