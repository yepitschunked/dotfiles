" ~/dotfiles/.vim/sessions/test.vim: Vim session script.
" Created by session.vim 1.5 on 20 January 2012 at 13:56:33.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egmrLtT
silent! set guifont=Inconsolata_XL:h12
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'jellybeans' | colorscheme jellybeans | endif
call setqflist([{'lnum': 93, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/stylesheets/partials/_modules.scss', 'text': '// key-value, hash'}, {'lnum': 94, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/stylesheets/partials/_modules.scss', 'text': '.hash {'}, {'lnum': 112, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/stylesheets/partials/_modules.scss', 'text': '  .hash{'}, {'lnum': 123, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/stylesheets/partials/_modules.scss', 'text': '    .hash {'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/code/topaz
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +107 public/javascripts/admin/scheduling/index.onready.js
badd +88 ~/.vimrc
badd +100 ~/dotfiles/.vim/doc/Powerline.txt
badd +28 app/views/registrations/confirm.html.haml
badd +7 app/views/registrations/_crossfit_confirm.html.haml
badd +5 app/stylesheets/partials/_order_confirmation.scss
badd +17 public/javascripts/supercombo.js
badd +33 app/views/questions/crossfit_schedule.html.haml
badd +15 app/controllers/questions_controller.rb
badd +32 app/models/user.rb
badd +41 app/models/package.rb
badd +20 app/views/questions/schedule.html.haml
badd +6 spec/views/questions/schedule.html.haml_spec.rb
badd +28 spec/factories/user.rb
badd +50 app/controllers/registrations_controller.rb
badd +24 app/controllers/practitioner_intake_controller.rb
badd +139 app/models/profile.rb
badd +1 db/migrate/20120111193358_add_beta_free_package_to_users_without_package.rb
badd +81 spec/models/intake_spec.rb
badd +11 spec/acceptance/intake_spec.rb
badd +229 spec/controllers/questions_controller_spec.rb
badd +119 spec/models/package_spec.rb
badd +42 spec/support/seed.rb
badd +5 spec/factories/package.rb
badd +13 spec/acceptance/diagnostic_reports/browsing_by_category_spec.rb
badd +32 app/models/user/practitioner.rb
badd +17 app/models/practitioner_profile.rb
badd +10 app/views/practitioner_profiles/_form.html.haml
badd +4 app/views/users/edit.html.haml
badd +92 app/views/users/_form.html.haml
badd +78 app/models/ability.rb
badd +26 app/helpers/application_helper.rb
badd +23 app/helpers/users_helper.rb
badd +17 lib/state_select.rb
badd +61 app/controllers/consults_controller.rb
badd +49 app/controllers/practitioners_controller.rb
badd +14 app/controllers/users_controller.rb
badd +24 app/models/availability.rb
badd +8 app/views/contacts/_form.html.haml
badd +125 spec/models/practitioner_spec.rb
badd +4 app/models/contact.rb
badd +5 app/models/jobs/lab_tests_auditor.rb
badd +28 app/views/consults/new.html.haml
badd +10 app/views/contacts/_practitioner_supercombo.html.haml
badd +13 app/views/contacts/_primary_practitioner.html.haml
badd +27 app/views/users/my_account.html.haml
badd +107 spec/acceptance/scheduling_spec.rb
badd +174 spec/controllers/consults_controller_spec.rb
badd +56 spec/controllers/practitioners_controller_spec.rb
badd +241 spec/models/availability_spec.rb
badd +6 spec/views/consults/new.html.haml_spec.rb
badd +104 spec/views/users/my_account.html.haml_spec.rb
badd +3 app/models/member_practitioner_link.rb
badd +16 spec/models/user_spec.rb
badd +15 spec/acceptance/choose_practitioner_spec.rb
badd +33 spec/controllers/admin/consults_controller_spec.rb
badd +6 spec/factories/consult.rb
badd +144 db/schema.rb
badd +29 spec/views/questions/contact.html.haml_spec.rb
badd +12 app/views/questions/contact.html.haml
badd +4 public/javascripts/users/primary_practitioner_select.js
badd +6 app/views/contacts/_practitioner_supercombo_option.html.haml
badd +12 app/models/consult.rb
badd +38 spec/controllers/diagnostic_reports_controller_spec.rb
badd +23 spec/controllers/users_controller_spec.rb
badd +42 app/controllers/admin/lab_panels_controller.rb
badd +30 app/controllers/admin/availabilities_controller.rb
badd +7 app/controllers/admin/consults_controller.rb
badd +22 app/views/users/show.html.haml
badd +14 app/views/users/index.html.haml
badd +32 app/views/users/_user_table.html.haml
badd +31 app/mailers/consult_mailer.rb
badd +5 app/models/jobs/hdl_downloader.rb
badd +21 app/models/user/diagnostics.rb
badd +44 app/models/lab_report.rb
badd +17 app/models/receipt.rb
badd +45 app/controllers/lab_reports_controller.rb
badd +134 lib/hl7_document.rb
badd +96 lib/hl7_lab_result.rb
badd +86 spec/models/lab_report_spec.rb
badd +14 app/views/lab_reports/index.html.haml
badd +39 spec/controllers/lab_reports_controller_spec.rb
badd +21 app/views/lab_reports/_lab_report_table.html.haml
badd +21 app/helpers/lab_reports_helper.rb
badd +6 app/views/lab_report_import_logs/show.html.haml
badd +20 app/views/lab_report_import_logs/_lab_report_table.html.haml
badd +2 app/views/lab_reports/show.html.haml
badd +1 app/mailers/lab_report_import_log_mailer.rb
badd +13 app/views/lab_report_import_log_mailer/admin_report.text.haml
badd +21 spec/mailers/lab_report_import_log_mailer_spec.rb
badd +21 spec/factories/lab_report.rb
badd +3 app/models/address.rb
badd +3 app/models/crossfit_box.rb
badd +14 app/views/admin/crossfit_boxes/_form.html.haml
badd +4 spec/views/admin/crossfit_boxes/_form.html.haml_spec.rb
badd +29 spec/controllers/admin/crossfit_boxes_controller_spec.rb
badd +0 app/views/admin/crossfit_boxes/show.html.haml
badd +19 app/stylesheets/partials/_admin.scss
badd +2 app/stylesheets/partials/_forms.scss
badd +14 app/stylesheets/partials/_modules.scss
badd +0 spec/views/admin/crossfit_boxes/show.html.haml_spec.rb
silent! argdel *
set lines=70 columns=202
edit app/models/address.rb
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 57 + 35) / 70)
exe 'vert 1resize ' . ((&columns * 22 + 101) / 202)
exe '2resize ' . ((&lines * 28 + 35) / 70)
exe 'vert 2resize ' . ((&columns * 89 + 101) / 202)
exe '3resize ' . ((&lines * 28 + 35) / 70)
exe 'vert 3resize ' . ((&columns * 89 + 101) / 202)
exe '4resize ' . ((&lines * 28 + 35) / 70)
exe 'vert 4resize ' . ((&columns * 89 + 101) / 202)
exe '5resize ' . ((&lines * 28 + 35) / 70)
exe 'vert 5resize ' . ((&columns * 89 + 101) / 202)
exe '6resize ' . ((&lines * 10 + 35) / 70)
argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 02l
wincmd w
argglobal
edit app/stylesheets/partials/_admin.scss
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((12 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 020l
wincmd w
argglobal
edit app/views/admin/crossfit_boxes/show.html.haml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 20 - ((11 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 040l
wincmd w
argglobal
edit spec/views/admin/crossfit_boxes/show.html.haml_spec.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
5wincmd w
exe '1resize ' . ((&lines * 57 + 35) / 70)
exe 'vert 1resize ' . ((&columns * 22 + 101) / 202)
exe '2resize ' . ((&lines * 28 + 35) / 70)
exe 'vert 2resize ' . ((&columns * 89 + 101) / 202)
exe '3resize ' . ((&lines * 28 + 35) / 70)
exe 'vert 3resize ' . ((&columns * 89 + 101) / 202)
exe '4resize ' . ((&lines * 28 + 35) / 70)
exe 'vert 4resize ' . ((&columns * 89 + 101) / 202)
exe '5resize ' . ((&lines * 28 + 35) / 70)
exe 'vert 5resize ' . ((&columns * 89 + 101) / 202)
exe '6resize ' . ((&lines * 10 + 35) / 70)
tabnew
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
5wincmd w
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
1wincmd w
let s:bufnr = bufnr("%")
NERDTree ~/code/topaz
execute "bwipeout" s:bufnr
tabnext 1
6wincmd w
let s:bufnr = bufnr("%")
cwindow
execute "bwipeout" s:bufnr
1resize 57|vert 1resize 22|2resize 28|vert 2resize 89|3resize 28|vert 3resize 89|4resize 28|vert 4resize 89|5resize 28|vert 5resize 89|6resize 10|vert 6resize 202|
tabnext 1
5wincmd w

" vim: ft=vim ro nowrap smc=128
