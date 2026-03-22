---@meta

-- TITLE LIBRARY

mw.title = {}

---@class mw.title.file
---@field exists boolean Whether the file exists.
---@field width integer|nil The width of the file.
---@field height integer|nil The height of the file.
---@field pages table|nil Tables for each page of the file, containing width and height.
---@field size integer|nil The size of the file in bytes.
---@field mimeType string|nil The MIME type of the file.
---@field length integer The length (duration) of the media file in seconds.
---@field metadata table|nil Embedded metadata (e.g. Exif). [EXPENSIVE]


---@class mw.title
---@field id integer The page_id. 0 if the page does not exist. [EXPENSIVE]
---@field interwiki string The interwiki prefix, or the empty string if none.
---@field namespace integer The namespace number.
---@field fragment string The fragment/section anchor.
---@field nsText string The text of the namespace for the page.
---@field subjectNsText string The text of the subject namespace for the page.
---@field talkNsText string|nil The text of the talk namespace for the page.
---@field text string The title of the page, without namespace or interwiki prefixes.
---@field prefixedText string The title of the page, with namespace and interwiki prefixes.
---@field fullText string The title of the page, with namespace, interwiki, and fragment.
---@field rootText string If subpage, 1st part of title.text.
---@field baseText string If subpage, title.text without last part.
---@field subpageText string If subpage, just the subpage name.
---@field canTalk boolean Whether the page could have a talk page.
---@field exists boolean Whether the page exists. [EXPENSIVE]
---@field file mw.title.file File metadata table. [EXPENSIVE]
---@field fileExists boolean Alias for file.exists. [EXPENSIVE]
---@field isContentPage boolean Whether this title is in a content namespace.
---@field isExternal boolean Whether this title has an interwiki prefix.
---@field isLocal boolean Whether this title is in this project.
---@field isRedirect boolean Whether this is a redirect. [EXPENSIVE]
---@field isSpecialPage boolean Whether this is a special page.
---@field isSubpage boolean Whether this title is a subpage.
---@field isTalkPage boolean Whether this is a talk page.
---@field contentModel string The content model for this title. [EXPENSIVE]
---@field basePageTitle mw.title
---@field rootPageTitle mw.title
---@field talkPageTitle mw.title|nil
---@field subjectPageTitle mw.title
---@field redirectTarget mw.title|false Returns target if redirect, false otherwise.
---@field protectionLevels table<string, table> The page's protection levels. [EXPENSIVE]
---@field cascadingProtection table The cascading protections applicable to the page. [EXPENSIVE]
---@field categories table The list of categories used on the page. [EXPENSIVE]
---@field content string|nil The unparsed content of the page.
---@field pageLang mw.language A language object for the title's content language. [EXPENSIVE]
---@field isDisambiguationPage boolean (Extension:Disambiguator) [EXPENSIVE]
---@field pageAssessments table (Extension:PageAssessments) [EXPENSIVE]
---@field pageImage string (Extension:PageImages) [EXPENSIVE]
local title = {}

--- Test for whether two titles are equal. Fragments are ignored.
---@param a mw.title
---@param b mw.title
---@return boolean
function mw.title.equals(a, b) end

--- Returns -1, 0, or 1 to indicate whether a is less than, equal to, or greater than b.
---@param a mw.title
---@param b mw.title
---@return integer
function mw.title.compare(a, b) end

--- Returns the title object for the current page.
---@return mw.title
function mw.title.getCurrentTitle() end

--- Creates a new title object.
---@param text_or_id string|integer
---@param namespace? string|integer
---@return mw.title|nil
function mw.title.new(text_or_id, namespace) end

--- Creates a title object, always applying the specified namespace.
---@param namespace string|integer
---@param title string
---@param fragment? string
---@param interwiki? string
---@return mw.title|nil
function mw.title.makeTitle(namespace, title, fragment, interwiki) end

---@class mw.title.batch
local titleBatch = {}

--- Requests that the batch lookup fills out the .exists, .contentModel, .id and .isRedirect fields.
---@return mw.title.batch @Returns the batch object for call chaining.
function titleBatch:lookupExistence() end

--- Returns a table with title objects. Any invalid titles will be nil in the table.
---@return table<integer, mw.title|nil>
function titleBatch:getTitles() end

--- Create a batch of titles to look up.
---@param listOfPages table<integer, string>
---@param defaultNamespace? string|integer
---@return mw.title.batch
function mw.title.newBatch(listOfPages, defaultNamespace) end

-- TITLE OBJECT METHODS

--- Returns true if this title is a subpage of title2.
---@param title2 mw.title
---@return boolean
function title:isSubpageOf(title2) end

--- Returns true if this title is in the given namespace.
---@param ns integer|string
---@return boolean
function title:inNamespace(ns) end

--- Returns true if this title is in any of the given namespaces.
---@param ... integer|string
---@return boolean
function title:inNamespaces(...) end

--- Returns true if this title's subject namespace is in the given namespace.
---@param ns integer|string
---@return boolean
function title:hasSubjectNamespace(ns) end

--- Returns a title object for a subpage of this title.
---@param text string
---@return mw.title|nil
function title:subPageTitle(text) end

--- Returns title.text encoded as it would be in a URL.
---@return string
function title:partialUrl() end

--- Returns the full URL (with optional query table/string) for this title.
---@param query? table|string
---@param proto? string "http", "https", "relative", or "canonical"
---@return string
function title:fullUrl(query, proto) end

--- Returns the local URL (with optional query table/string) for this title.
---@param query? table|string
---@return string
function title:localUrl(query) end

--- Returns the canonical URL (with optional query table/string) for this title.
---@param query? table|string
---@return string
function title:canonicalUrl(query) end

--- Returns the (unparsed) content of the page, or nil if there is no page.
---@return string|nil
function title:getContent() end
