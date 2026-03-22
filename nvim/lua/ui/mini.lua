require("mini.icons").setup()
require("mini.tabline").setup()
require("mini.statusline").setup()
require("mini.cursorword").setup()
require("mini.notify").setup()
require("mini.comment").setup()

require("mini.sessions").setup({
    autowrite = true,
})

local starter = require("mini.starter")
starter.setup({
    items = {
        starter.sections.sessions(5, true),
        starter.sections.builtin_actions(),
    },
})
