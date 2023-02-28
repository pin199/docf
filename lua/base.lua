
-- Удаляем все команды . Заменяем одну группу на другую, иначе она просто добавиться к предыдущей группе
vim.cmd('autocmd!')


-- encoding для самого редактора, fileencoding для буфера и scriptencoding для скриптов Vim.

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true --нумерация строк, локальные опции окна

vim.opt.title = true --установить заголовок окна на значение строки заголовка
vim.opt.autoindent = true --автоматичексий отступ
vim.opt.hlsearch = true --находит все совпадения по шаблону 
vim.opt.backup = false --сохранение конфигурации файла только во время работы
vim.opt.showcmd = true --показать неполные команды
vim.opt.cmdheight = 1 --высота панели команд
vim.opt.laststatus = 2 --постоянно показывать строку состояния
vim.opt.expandtab = true --в режиме вставки заменяет символ табуляции на соответствующее количество пробелов. Так же влияет на отступы,                         -- добавляемые командами >> и <<.

vim.opt.scrolloff = 10 --установить курсорам 20 строк - при перемещении по вертикали
vim.opt.shell = 'fish'
vim.opt.backupskip = {'/tmp/*', '/private/tmp/*'} -- пропустить сохранение конф в даных путях
vim.opt.inccommand = 'split' --показать замены в разделенном окне, перед подачей на файл.
vim.opt.ignorecase = true --Поиск без учета регистра, ЕСЛИ /C или заглавная буква в поиске
vim.opt.smarttab = true --вкладка учитывает «табуляцию», «ширину сдвига» и «мягкую табуляцию»
vim.opt.breakindent = true --Сохранить интентацию виртуальной линии. Эти «виртуальные линии» видны только когда wrap включен.

-- Не игнорировать регистр, если есть символы в верхнем регистре
-- Если напишем "Ignore", то он будет искать только "Ignore"
vim.opt.smartcase = true

-- Подсвечивать найденные текстовые объекты
vim.opt.showmatch = true

-- Установка количества пробельных символов, когда сдвигаем с помощью "<", ">"
-- По сути не смотря на expandtab в терминале все равно отображаются пробельные символы, поэтому установим их количество на одно нажатие этих кнопок
vim.opt.shiftwidth = 2

-- 1 таб == 2 пробела c новой строки
-- При нажатии <CR> будут вставлять табы. Табы рисуются как пробелы. Именно поэтому мы должны установить что каждый таб в новой строке - 2 пробела
vim.opt.tabstop = 2

-- Вертикальные сплиты становятся справа
-- По умолчанию панели в Neovim ставятся в зависимости от расположения текущей панели. Данная настройка поможет нам держать панели в порядке
vim.opt.splitright = true

-- Горизонтальные сплиты становятся снизу
vim.opt.splitbelow = true

-- Отключаем дополнение файлов в конце
vim.opt.fixeol = false


-- Автодополнение (встроенное в Neovim)
vim.opt.completeopt = 'menuone,noselect'

vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent

vim.opt.wrap = false -- No wrap lines

vim.opt.backspace = 'start,eol,indent'

vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }


-- Undercurl
-- don't work 
