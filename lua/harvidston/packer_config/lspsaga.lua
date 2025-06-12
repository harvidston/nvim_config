local saga = require("lspsaga")

-- Основная настройка lspsaga
saga.setup({
  -- Иконка для отображения code action (кодовых действий)
  code_action_icon = "💡",

  -- Настройка панели с символами (например, в winbar)
  symbol_in_winbar = {
    enable = true,       -- Включить отображение символов
    separator = ' ',   -- Разделитель между символами
    show_file = true,    -- Показывать имя файла в winbar
    file_formatter = "", -- Можно указать форматтер имени файла (оставим пустым)
    in_custom = false,   -- Не используем кастомные символы (по умолчанию)
  },

  ui = {
    -- Округлённые границы для окон подсказок и прочего
    border = "rounded",
    winblend = 1,  -- Прозрачность окон (0 — без прозрачности)
  },

  -- Code action (кодовые действия) настройка
  code_action = {
    num_shortcut = true,         -- Включить быстрые клавиши с цифрами для выбора действия
    show_server_name = false,    -- Не показывать название LSP-сервера в подсказке
    extend_gitsigns = true,      -- Интеграция с gitsigns для code actions
  },

  -- Поиск определений, ссылок, вызовов и др.
  finder = {
    keys = {
      edit = "e",       -- Открыть в текущем окне
      vsplit = "v",     -- Открыть в вертикальном сплите
      split = "s",      -- Открыть в горизонтальном сплите
      quit = "q",       -- Выйти из окна поиска
    },
  },
})

-- Настройка удобных клавиш для lspsaga (можно менять под себя)
local keymap = vim.keymap.set

-- Показать документацию по символу (hover)
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>")

-- Показать ошибки и предупреждения для текущей строки
keymap("n", "<leader>e", "<cmd>Lspsaga show_line_diagnostics<CR>")

-- Открыть окно поиска определений, ссылок и вызовов
keymap("n", "gd", "<cmd>Lspsaga finder<CR>")

-- Выполнить кодовое действие (code action)
keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>")

-- Переход к реализации (implementation)
keymap("n", "gi", "<cmd>Lspsaga goto_implementation<CR>")

-- Переход к предыдущей диагностике
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")

-- Переход к следующей диагностике
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")

-- Показать outline (структуру файла)
keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>")

