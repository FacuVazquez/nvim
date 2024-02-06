return {

  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    _Gopts = {
      position = "center",
      hl = "Type",
      -- wrap = "overflow";
    }

    local footers = {
      "LoOk Ma, I uSe NeOvIm!",
      "How do i quit vim?",
      "Albion Online es un mmorpg no lineal, en el que escribes tu propia historia sin limitarte a seguir un camino prefijado. Explora un amplio mundo abierto con 5 biomas....",
      "HEY!! FIX YOUR POSTURE!!",
      "Have you tried turning it off and on again?",
      "ほう…向かってくるのか。逃げずにこのディオに近づいてくるのか。",
      "Never gonna give you up, never gonna let you down",
      "El mate, el asado y el dulce de leche son argentinos",
      "Que miras bobo, anda, anda pa' alla'!",
      "4 empanadas de carne, una de verdura y queso, una de choclo, una de carne, otra de chocl- NO PARA PARA!",
    }

    local function footer()
      local index = math.random(#footers)
      return footers[index]
    end

    dashboard.section.footer.val = footer()

    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)
  end,
}
