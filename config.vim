" Отсутствие совместимости с редактором VI
set nocompatible
" Поддержка различных отступов для различных типов файлов
filetype plugin indent on
" Поиск введется сразу при наборе символов
set incsearch
" По-умолчанию VIM при переключении в другой буфер 'заставляет'
" сохранять файл и выгружате его из памяти. Из-за этого теряются
" история правок файла. Благодаря этой опции VIM не выгружает
" буфер из памяти при смене его на другой буфер
set hidden
" Умные отступы
set smartindent
" Устанавливаем другие отступы
if has("autocmd")
     " Включаем определение типов файлов
     filetype off
     " Отступы
     set ts=2 sts=2 sw=2 expandtab
     au! BufRead,BufNewFile *.sass    setfiletype sass
     au! BufRead,BufNewFile *.haml    setfiletype haml
     au! BufRead,BufNewFile *.coffee  setfiletype coffee
     au! BufRead,BufNewFile *.md      setfiletype markdown
endif
" Автоперезагружать измененные файлы
set autoread
" Игнорировать регистр при поиске
set ignorecase
" Но если буквы печатаются большими, то регистр учитывать
set smartcase
" VIM по-умолчанию сохраняет файлы в кодировке utf-8
set encoding=utf-8
" Возможные кодировки файлов и порядок их открытия
set fileencodings=utf-8,cp1251
" Не создавать файлов бэкапа и своп-файлы
set nobackup
set noswapfile
" Подтверждение на сохранение закрываемого файла
set confirm
" Включает возможность использовать 'внутреннюю' раскладку
" клавиатур. При включенной русской системной раскладке
" VIM по-прежнему работает только в режиме ввода
" В ВикиУчебнике написан способ, который может заставить
" работать VIM при включенной системной раскладке
" но вместо этого я использую клевейшую функцию -
" 'для каждого окна своя раскладка
set keymap=russian-jcukenwin
" По-умолчанию поиск и вставка будут происходить на английском языке
set iminsert=0
set imsearch=0
" Для вставки использовать системный буфер обмена
set clipboard=unnamed
" При скроллинге VIM будет держать курсор всегда на 5 строк выше
" верхней-нижней линий
set scrolloff=5
" Настройки для встроенного файлового менеджера Netrw
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_liststyle=3
