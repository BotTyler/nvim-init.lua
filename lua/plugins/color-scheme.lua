return {
    "folke/tokyonight.nvim",
    opts = {
        on_highlights = function(hl, c)
            hl.DiagnosticUnderlineError = { underline = true, sp = c.error }
            hl.DiagnosticUnderlineWarn = { underline = true, sp = c.warning }
            hl.DiagnosticUnderlineInfo = { underline = true, sp = c.info }
            hl.DiagnosticUnderlineHint = { underline = true, sp = c.hint }
        end,
    },
}
