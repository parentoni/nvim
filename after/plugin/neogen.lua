-- Generate doc keymap
vim.keymap.set("n", "<leader>d", ":lua require('neogen').generate()<CR>")

--Custom templates
local i = require("neogen.types.template").item

local jsdoc_template = {
    { nil, "/** $1 */", { no_results = true, type = { "func", "class" } } },
    { nil, "/** @type $1 */", { no_results = true, type = { "type" } } },

    { nil, "/**", { no_results = true, type = { "file" } } },
    { nil, " * @module $1", { no_results = true, type = { "file" } } },
    { nil, " */", { no_results = true, type = { "file" } } },

    { nil, "/**", { type = { "class", "func" } } },
    { i.ClassName, " * @classdesc $1", { before_first_item = { " * ", " * @class" }, type = { "class" } } },
    { i.Parameter, " * @param {any} %s $1", { type = { "func" } } },
    {
        { i.Type, i.Parameter },
        " * @param {%s} %s $1",
        { required = i.Tparam, type = { "func" } },
    },
    { i.Return, " * @returns {$1} $1", { type = { "func" } } },
    { nil, " *" },
    { nil," * @author Arthur Parentoni Guimaraes <parentoni.arthur@gmail.com>", {type = {"func", "class"}}},
    { nil, " */", { type = { "class", "func" } } },
}

require('neogen').setup {
  enabled = true,
  languages = {
    typescript = {
      template = {
        annotation_convention = "jsdoc",
        jsdoc = jsdoc_template
      }
    }
  }
}


