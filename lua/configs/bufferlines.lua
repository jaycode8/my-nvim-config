
local status, bfline = pcall(require, "bufferline")

if not status then
    return
end

bfline.setup({
  options = {
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    close_icon = '',
    diagnostics = "nvim_lsp",
   -- separator_style =  "slant" ,
    show_tab_indicators = true,
    buffer_close_icon = "",
    --diagnostics_indicator = function(count, level)
    --    local icon = level:match("error") and " " or ""
    --    return " " .. icon .. count
    --end 
  },
})
