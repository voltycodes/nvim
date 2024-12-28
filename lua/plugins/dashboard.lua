return {
  "nvimdev/dashboard-nvim",
  lazy = false, -- As https://github.com/nvimdev/dashboard-nvim/pull/450, dashboard-nvim shouldn't be lazy-loaded to properly handle stdin.
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VimEnter',
  opts = function()
    local logo = [[
⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠤⣠⠾⣛
⣿⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⢠⣄⠐⢣⡾⢿
⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⡄⣰⠆⡆⠘⣰⢻⢃⢓⢨⣴⣾
⣿⣿⣿⣿⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢰⢇⡏⡼⣰⣇⢆⢠⠛⡱⢳⡟⣾⠸⠿⠿
⣿⣿⣿⣿⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⢤⡖⡿⣰⣱⣇⡾⣾⢷⠟⠤⢆⢔⣭⣾⣏⣾⣿⢻⣿⡿
⣿⣿⣿⣿⣿⣿⣿⣧⣿⡜⢂⠀⠠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢠⠀⡄⡖⣼⣼⠏⡛⢼⢠⢣⡟⢟⡼⣣⢣⣯⠐⢡⣿⣾⣿⣿⣿⣿⣛⣨⣤⣶
⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⡎⢲⡀⠁⡀⡀⠘⣶⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢠⡄⣶⠰⢰⢁⣷⡏⡘⣸⠸⠃⠉⡷⠰⠁⢡⡴⢏⢞⡾⡳⣩⣿⣤⣶⣿⣿⣿⣿⣿⣿⣯⢿⣿⣭⣽
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡠⡀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣶⣤⣄⣀⠀⠀⠀⢀⡀⠀⠀⡀⠀⠀⠀⠀⢀⠀⠀⠀⠀⢀⡀⢀⢀⠀⠆⠂⣋⣀⢀⡤⣀⢀⠈⡀⡉⡈⠈⢀⢁⣄⠞⠈⠈⠀⣠⢆⡞⣸⢁⠿⢜⣹⣿⣿⣿⣿⣿⣿⣿⡿⡿⠿⡃⣽⢹⣷⣾
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠑⠀⠀⠀⡄⠀⠻⣿⣿⣿⣿⣿⣿⣿⠈⢰⡀⠀⢈⠀⠀⠻⠸⠀⠀⠄⣤⢠⠀⢀⡄⠀⠁⡈⠀⠀⢰⠸⠃⣀⠀⠀⠀⠈⠀⠉⠁⠁⠁⠈⠀⠀⢀⡄⣴⣰⡟⣼⢳⠟⢋⣴⣿⣿⣿⣿⣿⣿⣿⣿⡿⢧⡿⠈⢳⣿⢸⣧⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠁⠠⠀⠙⡄⠀⡈⠛⢿⣿⣿⣿⣿⣄⠈⠳⠖⢋⣠⡄⠰⣶⣦⠆⣸⣿⣮⣤⡾⢱⣠⡴⢡⣡⢷⡏⡗⢰⠃⣾⢱⡆⡴⢠⡄⣤⢠⣤⠆⡄⠎⡾⢹⢋⡟⣵⢫⡎⢈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣷⣿⢸⣶⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠇⠀⠀⠀⠀⠀⠘⣁⠈⠱⣀⢆⢄⠀⠀⡈⣉⢉⠉⢉⣡⠰⢒⠀⢀⣿⣿⢰⣿⣿⣿⣿⣀⣽⣿⣶⣤⡄⠀⢁⢀⠿⡾⢳⡿⣼⢧⡿⣻⢏⡟⡜⣸⠀⡾⣰⢷⡿⡼⢏⠟⡀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡇⣈⣤⠞
⣿⣿⣿⣿⣿⡿⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠘⢯⡦⡉⠂⠌⢣⢷⢠⢹⢸⡆⠄⡧⠄⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣾⣴⣰⠀⠆⣤⢋⡜⣱⣯⡾⣼⢳⢏⡄⠴⣥⢯⡼⣡⠟⣨⡼⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⠀⢫⡤⠂
⣿⠟⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡀⠘⣷⣸⡆⢠⠌⡘⠛⡌⠘⡇⡄⡃⠇⢠⠘⢸⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣮⡍⣟⡳⣫⡞⣵⢣⣎⡼⡃⢸⢃⡌⣡⣫⣴⢛⣵⠖⣬⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⢫⠔⢸
⠀⠀⢀⣀⠤⠔⠀⠀⡀⠤⠐⠀⠀⠀⡆⣨⣷⣷⡄⠙⣧⣷⣤⣶⣶⣦⡁⠀⡇⡇⡇⣾⡾⠀⣾⣿⢃⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠈⣱⢏⡝⣱⢏⡞⣵⢣⠈⢎⡽⣱⢟⣵⠟⢁⠞⣵⠶⣈⡽⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠵⢣⡶⡎
⣢⠠⡇⠀⢠⣴⣆⠀⢷⠀⢰⣾⣇⠀⣿⣿⣿⣿⣿⠀⢸⣿⣿⣿⣿⣿⠇⢸⡇⡇⣇⡇⡇⢇⣿⠏⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠇⣿⢳⡿⣹⠏⠿⡹⣣⣏⢀⡿⡹⣋⡠⣢⢖⡴⢖⡀⢈⡁⢚⣋⠠⢽⣿⣿⣿⣿⣿⣿⣿⡟⣰⢏⡄⠇
⠁⠀⢠⠀⠘⣿⣿⡄⠘⠀⠀⣿⣿⡀⢸⣿⣿⣿⣿⣧⠈⢿⣿⣿⠿⢯⠀⢸⢁⢠⢿⢱⢸⢸⢿⡃⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⣷⢠⢇⡞⣵⡏⡜⡼⢳⣯⣤⣾⠵⠷⠛⠚⠛⠛⠷⢿⡵⢿⣵⢆⡄⣪⠽⣿⣿⣿⣿⣿⣿⣿⡿⣡⣿⡦⢴
⣶⡄⠈⣆⠀⢻⣿⣇⠀⡇⠀⢹⣿⡇⠈⡿⡿⣿⣿⣿⡆⠈⠓⠌⠢⢸⢸⣸⢸⡼⠈⡾⠇⠘⠶⢈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⡏⡾⣾⢳⣟⠉⣑⡶⠞⠉⢩⣴⣶⣶⡄⣴⣶⣶⣶⣤⣀⠉⠉⠪⣂⣷⡶⢝⣻⣿⣿⣿⣿⣿⠿⢋⠕⠀⠀
⣿⣿⡀⠘⠀⠸⣿⣿⡄⠸⡀⠀⠿⠇⠀⠇⠀⠀⠀⠀⠀⠀⠀⠠⠈⠀⠈⢃⢇⢣⢿⢃⠀⡱⡀⠀⣿⣿⣿⣿⣿⣿⣿⠿⣟⡙⠿⢿⡛⣿⢸⡏⡿⢹⣁⣗⡪⠖⣋⣤⣾⣿⣿⣿⣿⣿⣿⡿⣿⣿⡿⢳⠿⠋⠀⠀⠀⠀⠁⢎⠭⣞⣻⣿⠟⡋⣠⣊⠀⠀⠀⠀
⣿⣿⣇⠀⢣⠀⠻⠟⠃⠀⢣⡤⠤⣤⠖⠃⠀⠀⠀⣀⣤⣤⠀⠀⠀⠀⠀⠀⠂⡏⢘⢸⢨⢬⠔⡁⣽⣿⣿⣿⠟⡫⠐⣂⡅⡇⣰⢸⡇⣿⣼⢡⠃⠬⠛⣤⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡫⠚⣡⠈⡴⠃⠈⠓⢤⡀⢀
⣿⣿⣿⣦⠈⠀⠀⡠⠖⢠⡿⠖⢀⡤⠂⠂⠀⣶⣾⣿⣿⠶⠀⠀⠀⠀⣀⣠⣀⠀⠂⡘⡈⠀⣨⣴⣿⠿⠏⣁⢚⢡⣸⢹⢡⢡⡏⠿⢉⠥⠋⢉⣵⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔⢠⡖⠁⡘⠁⢰⣿⣶⡄⠉⠓
⣿⣿⣿⣿⡆⠀⢡⠀⠀⠀⡰⠊⠀⠀⠀⠀⢳⠟⠊⠁⠀⠀⠀⠀⣰⣿⣿⣿⠿⠁⠀⠀⠀⠐⠒⠠⠄⢰⢸⢃⠦⠏⠃⠁⠀⠂⠀⣉⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢄⡴⢣⣶⣾⠃⢀⣾⣿⡟⠀⡼⠀
⠈⣿⣿⣿⣿⡄⠀⠧⠟⠀⣀⣴⣾⣿⣷⠀⠀⠄⠀⠀⠀⠀⠀⠀⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⣀⣀⣈⣁⣀⣀⣠⣶⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠟⠋⠉⠀⠀⠀⢀⣀⣰⣾⣿⡇⠀⠀⢀⣀⣀⡀⠀⠀⠀⢀⡴⢀⠆⠀⠀⢠⠃⢀⣾⣿⡿⠀⠸⠀⢀
⠀⠘⣿⣿⣿⣧⠀⢀⣤⣾⣿⣿⡿⠛⠁⢀⠤⠢⠠⣀⣀⡀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠠⡟⠛⠀⠀⠀⠀⠉⠙⠛⠛⠛⠛⠛⠛⠛⠉⠉⠀⣠⣤⣄⣬⠀⠀⠀⠀⢠⣴⣾⣿⣿⡟⠛⠛⠛⢋⣉⡉⠀⣇⣤⡴⣠⡞⢡⠋⠀⠀⢠⠎⠀⣼⣿⡟⠀⢠⠂⠀⣾
⢳⠀⢹⣿⣿⣿⣷⣾⣿⣿⡟⠋⠁⣀⠒⠁⠀⠀⠀⠈⠈⠉⠀⠀⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⠟⠋⠀⠀⠀⠀⠀⣴⣿⣿⡿⠋⠁⠀⠀⠀⠀⣾⣿⣿⣿⣿⡇⠀⣿⣿⣿⣿⡇⠀⣷⢫⣷⡿⢱⡿⣄⠀⠀⡌⠀⣴⣿⣿⠃⠀⠃⠀⣴⣿
⠀⢃⡀⠙⣿⣿⣿⡿⠿⠁⢀⣠⣎⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠐⠢⠦⢤⣀⣀⡀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠿⠛⠁⠀⠀⠀⠀⠀⠀⢠⣿⠿⠟⠋⠙⡇⠀⠿⠿⠛⠋⠀⣀⣿⣿⣿⠔⠃⠀⠈⠇⠘⠀⢠⣿⡿⠁⠀⠀⠀⣸⣿⡿
⠀⢀⢣⠀⠙⢿⣿⣷⣄⠀⠘⢿⣿⣿⣿⣷⣖⣤⣤⣤⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠙⠛⠐⠒⠚⠣⠤⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠧⠤⠄⠀⣴⡞⣿⣿⠿⠛⠁⣤⣾⣿⠀⠘⣤⣄⡀⠙⠃⠀⠀⠀⠸⢿⣿⠁
⣴⣷⣶⣷⡀⠈⢻⣿⣿⡄⠀⠈⢻⣿⣿⣿⣿⠝⠾⠛⠛⠛⠻⠷⣶⣶⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠉⠀⠀⠖⠢⠤⡤⠤⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⣴⠟⠁⢀⣶⣾⡿⠏⠁⣠⠄⠉⠉⠉⠛⠶⣶⣴⣶⣄⡀⠀⢀
    ]]

    logo = logo .. "\n"

    local opts = {
      theme = "doom",
      hide = {
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = "ene | startinsert",                              desc = " New File",        icon = " ", key = "n" },
          { action = "Telescope find_files",                           desc = " Find File",       icon = " ", key = "f" },
          { action = "Telescope live_grep",                            desc = " Find Text",       icon = " ", key = "g" },
          { action = "Telescope oldfiles",                             desc = " Recents",         icon = " ", key = "r" },
          { action = "Neotree position=float",                         desc = " Neotree",         icon = " ", key = "v" },
          { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
        },
        footer = function()
          local stats = require("lazy").stats()
          local padding = 8  -- set horizontal padding for the box

          -- Construct the dynamic content
          local content = os.date "%H:%M --- %Y-%m-%d" .. " --- " .. stats.loaded .. "/" .. stats.count

          -- Calculate the width based on the content length
          local width = string.len(content) + padding  -- Add padding for the box

          -- Create top and bottom border dynamically based on width
          local border = "╭" .. string.rep("─", width) .. "╮"
          local footer_line = "│" .. string.rep(" ", padding / 2) .. content .. string.rep(" ", padding / 2) .. "│"
          local bottom_border = "╰" .. string.rep("─", width) .. "╯"

          return { "", border, footer_line, bottom_border }
        end

      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- open dashboard after closing neo-tree
    vim.api.nvim_create_autocmd("WinClosed", {
      callback = function(event)
        local buftype = vim.api.nvim_get_option_value("filetype", { buf = event.buf })
        if buftype == "neo-tree" then
          vim.schedule(function()
            vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
          end)
        end
      end,
    })

    return opts
  end,
}
