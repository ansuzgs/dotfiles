return {
    "nvim-orgmode/orgmode",
    event = "VeryLazy",
    ft = { "org" },
    config = function()
        local org = require("orgmode")
        org.setup({
            org_agenda_files = "~/orgfiles/*",
            org_default_notes_file = "~/orgfiles/notes.org",
            org_todo_keywords = { 'TODO', 'IN_PROGRESS', 'WAITING', '|', 'DONE', 'CANCELED' },
            org_capture_templates = {
                t = {
                    description = 'Task',
                    template = '* TODO %?\n  %u',
                    target = '~/orgfiles/notes.org'
                },
                j = {
                    description = 'Journal',
                    template = '* %U %?\n',
                    target = '~/orgfiles/journal.org'
                },
            }
        })
    end,
}
