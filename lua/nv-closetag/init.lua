-- These are the file extensions where this plugin is enabled
G.closetag_filenames = '*.html, *.jsx, *.js'

-- This will make the list of non-closing tags case-sensitive
G.closetag_emptyTags_caseSensitive = 0

-- Disables auto-close if not in a 'valid' region (based on filetype)
G.closetag_regions = {
  ['typescript.tsx']  = 'jsxRegion,tsxRegion',
  ['javascript.jsx']  = 'jsxRegion',
  ['typescriptreact'] = 'jsxRegion,tsxRegion',
  ['javascriptreact'] = 'jsxRegion'
}
