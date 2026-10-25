return {
    {
        "nvim-telescope/telescope.nvim",
        version = "*",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
        },
        config = function()
            local telescope = require("telescope")
            telescope.setup({
                extensions = {
                    fzf = {
                        fuzzy = true,
                        override_generic_sorter = true,
                        override_file_sorter = true,
                        case_mode = "smart_case",
                    },
                },
            })

            local builtin = require("telescope.builtin")
            local keymap = vim.keymap.set

            keymap("n", "<leader>ff", builtin.find_files,
                { desc = "Telescope: find files" })
            keymap("n", "<leader>fg", builtin.live_grep,
                { desc = "Telescope: live grep" })
            keymap("n", "<leader>fb", builtin.buffers,
                { desc = "Telescope: buffers" })
            keymap("n", "<leader>fh", builtin.help_tags,
                { desc = "Telescope: help tags" })

            telescope.load_extension("fzf")
        end,
    },
}
