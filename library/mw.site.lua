---@meta

-- SITE LIBRARY

---@class mw.site.namespace
---@field id integer Namespace number.
---@field name string Local namespace name.
---@field canonicalName string Canonical namespace name.
---@field displayName string Name to be used for display (set on namespace 0).
---@field hasSubpages boolean Whether subpages are enabled.
---@field hasGenderDistinction boolean Whether the namespace has different aliases for different genders.
---@field isCapitalized boolean Whether the first letter is capitalized.
---@field isContent boolean Whether this is a content namespace.
---@field isIncludable boolean Whether pages can be transcluded.
---@field isMovable boolean Whether pages can be moved.
---@field isSubject boolean Whether this is a subject namespace.
---@field isTalk boolean Whether this is a talk namespace.
---@field defaultContentModel string The default content model.
---@field aliases table<integer, string> List of aliases for the namespace.
---@field subject mw.site.namespace Reference to the subject namespace's data.
---@field talk mw.site.namespace|nil Reference to the talk namespace's data.
---@field associated mw.site.namespace|nil Reference to the associated namespace's data.

---@class mw.site.stats
---@field pages integer Number of pages in the wiki.
---@field articles integer Number of articles in the wiki.
---@field files integer Number of files in the wiki.
---@field edits integer Number of edits in the wiki.
---@field users integer Number of users in the wiki.
---@field activeUsers integer Number of active users in the wiki.
---@field admins integer Number of users in group 'sysop'.
local site_stats = {}

--- Gets statistics about the category. [EXPENSIVE]
--- When `which` is '"*"' a table is returned containing `all`, `subcats`, `files`, and `pages`.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.site.stats.pagesInCategory)
---@overload fun(category: string, which: string): integer
---@param category string
---@param which '"*"'
---@return {all: integer, subcats: integer, files: integer, pages: integer}
function site_stats.pagesInCategory(category, which) end

--- Returns the number of pages in the given namespace.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.site.stats.pagesInNamespace)
---@param namespace integer
---@return integer
function site_stats.pagesInNamespace(namespace) end

--- Returns the number of users in the given group.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.site.stats.usersInGroup)
---@param group string
---@return integer
function site_stats.usersInGroup(group) end

---@class mw.site.interwiki
---@field prefix string The interwiki prefix.
---@field url string The URL that the interwiki points to.
---@field isProtocolRelative boolean
---@field isLocal boolean
---@field isCurrentWiki boolean
---@field isTranscludable boolean
---@field isExtraLanguageLink boolean
---@field displayText string|nil
---@field tooltip string|nil

---@class mw.site
---@field currentVersion string The current version of MediaWiki.
---@field scriptPath string The value of $wgScriptPath.
---@field server string The value of $wgServer.
---@field siteName string The value of $wgSitename.
---@field stylePath string The value of $wgStylePath.
---@field wikiId string The wiki ID.
---@field namespaces table<integer|string, mw.site.namespace> Table holding data for all namespaces.
---@field contentNamespaces table<integer, mw.site.namespace> Table holding just the content namespaces.
---@field subjectNamespaces table<integer, mw.site.namespace> Table holding just the subject namespaces.
---@field talkNamespaces table<integer, mw.site.namespace> Table holding just the talk namespaces.
---@field stats mw.site.stats Table holding site statistics.
mw.site = {}

--- Returns a table holding data about available interwiki prefixes.
--- If `filter` is provided it may be '"local"' or '"!local"'.
---
--- [Reference manual](https://www.mediawiki.org/wiki/Extension:Scribunto/Lua_reference_manual#mw.site.interwikiMap)
---@param filter? string '"local"' or '"!local"'
---@return table<string, mw.site.interwiki>
function mw.site.interwikiMap(filter) end
