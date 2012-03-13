" ~/dotfiles/.vim/sessions/default.vim: Vim session script.
" Created by session.vim 1.5 on 25 February 2012 at 00:37:08.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egmrLtT
silent! set guifont=Inconsolata_XL:h12
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'light'
	set background=light
endif
if !exists('g:colors_name') || g:colors_name != 'github' | colorscheme github | endif
call setqflist([{'lnum': 6, 'col': 67, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/controllers/purchases_controller.rb', 'text': '  #after_filter lambda { track_campaign_on(:receipt) }, :only => :chargify_response'}, {'lnum': 16, 'col': 22, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/controllers/purchases_controller.rb', 'text': '    if session[:last_chargify_call].present?'}, {'lnum': 17, 'col': 15, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/controllers/purchases_controller.rb', 'text': '      @call = chargify_client.calls.read(session[:last_chargify_call])'}, {'lnum': 20, 'col': 17, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/controllers/purchases_controller.rb', 'text': '      @signup = ChargifyModels::Signup.new(@user)'}, {'lnum': 39, 'col': 22, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/controllers/purchases_controller.rb', 'text': '    #We''re moving to chargify and they send nicer emails than us.'}, {'lnum': 1, 'col': 8, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/helpers/chargify_helper.rb', 'text': 'module ChargifyHelper'}, {'lnum': 2, 'col': 23, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/helpers/chargify_helper.rb', 'text': '  require_dependency ''chargify'''}, {'lnum': 3, 'col': 7, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/helpers/chargify_helper.rb', 'text': '  def chargify'}, {'lnum': 4, 'col': 6, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/helpers/chargify_helper.rb', 'text': '    @chargify ||= Chargify2::Client.new(AppConfig.chargify.to_h)'}, {'lnum': 7, 'col': 7, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/helpers/chargify_helper.rb', 'text': '  def chargify_signup_path'}, {'lnum': 8, 'col': 5, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/helpers/chargify_helper.rb', 'text': '    ChargifyModels::Signup.path'}, {'lnum': 13, 'col': 21, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/helpers/chargify_helper.rb', 'text': '  # It sucks. Blame Chargify.'}, {'lnum': 15, 'col': 16, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/helpers/chargify_helper.rb', 'text': '    if receipt.chargify_call_id'}, {'lnum': 16, 'col': 14, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/helpers/chargify_helper.rb', 'text': '      call = chargify.calls.read(receipt.chargify_call_id)'}, {'lnum': 21, 'col': 44, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/user/payments.rb', 'text': '        raise "#purchase - could not match chargify package handle #{package_code} for receipt #{receipt.id}"'}, {'lnum': 18, 'col': 20, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/views/users/_receipts_table.html.haml', 'text': '      - if receipt.chargify_call_id'}, {'lnum': 20, 'col': 11, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/views/users/_receipts_table.html.haml', 'text': '          Chargify ID:'}, {'lnum': 22, 'col': 21, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/views/users/_receipts_table.html.haml', 'text': '          = receipt.chargify_call_id'}, {'lnum': 36, 'col': 21, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'config/deploy.rb', 'text': '    replace_config(''chargify.yml'')'}, {'lnum': 1, 'col': 10, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'db/migrate/20120209225756_add_chargify_call_id_to_receipts.rb', 'text': 'class AddChargifyCallIdToReceipts < ActiveRecord::Migration'}, {'lnum': 3, 'col': 28, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'db/migrate/20120209225756_add_chargify_call_id_to_receipts.rb', 'text': '    add_column :receipts, :chargify_call_id, :string'}, {'lnum': 7, 'col': 31, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'db/migrate/20120209225756_add_chargify_call_id_to_receipts.rb', 'text': '    remove_column :receipts, :chargify_call_id'}, {'lnum': 1, 'col': 10, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'db/migrate/20120214205522_add_chargify_customer_id_to_users.rb', 'text': 'class AddChargifyCustomerIdToUsers < ActiveRecord::Migration'}, {'lnum': 3, 'col': 25, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'db/migrate/20120214205522_add_chargify_customer_id_to_users.rb', 'text': '    add_column :users, :chargify_customer_id, :string'}, {'lnum': 7, 'col': 28, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'db/migrate/20120214205522_add_chargify_customer_id_to_users.rb', 'text': '    remove_column :users, :chargify_customer_id'}, {'lnum': 681, 'col': 17, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'db/schema.rb', 'text': '    t.string   "chargify_call_id"'}, {'lnum': 775, 'col': 17, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'db/schema.rb', 'text': '    t.string   "chargify_customer_id"'}, {'lnum': 128, 'col': 13, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/acceptance/purchase_spec.rb', 'text': '      @user.chargify_customer_id.should_not be_nil'}, {'lnum': 2, 'col': 21, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': 'require_dependency ''chargify'''}, {'lnum': 54, 'col': 45, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '    describe "when a call_id is provided", :chargify => true, :vcr => {:record => :new_episodes, :match_requests_on => [:body], :cassette_name => ''failing_chargify_signup''} do'}, {'lnum': 58, 'col': 55, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '        @call_id = extract_call_id_from_redirect(post_chargify_signup_form('}, {'lnum': 69, 'col': 23, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '        session[:last_chargify_call] = @call_id'}, {'lnum': 71, 'col': 26, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '      it "should get the chargify call" do'}, {'lnum': 89, 'col': 14, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '  describe ''#chargify_response'', :chargify => true do'}, {'lnum': 94, 'col': 106, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '    context ''with successful purchase'', :vcr => {:record => :new_episodes, :cassette_name => ''successful_chargify_signup''} do'}, {'lnum': 95, 'col': 22, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '      subject { get :chargify_response, Rack::Utils.parse_nested_query(URI(@redirect.headers[:location]).query).merge(:user_id => @user.id) }'}, {'lnum': 98, 'col': 26, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '        @redirect = post_chargify_signup_form('}, {'lnum': 104, 'col': 47, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '          :signup => @signup = Factory.build(:chargify_signup, :user => @user).to_hash)'}, {'lnum': 106, 'col': 26, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '        controller.send(:chargify_client).stub_chain(:direct, :response_parameters) { @mock_response_parameters }'}, {'lnum': 115, 'col': 26, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '        controller.send(:chargify_client).stub_chain(:direct, :response_parameters) { mock_response_parameters }'}, {'lnum': 131, 'col': 24, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '        subject { get :chargify_response, Rack::Utils.parse_nested_query(URI(@redirect.headers[:location]).query).merge(:user_id => ''fail'') }'}, {'lnum': 134, 'col': 28, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '          controller.send(:chargify_client).stub_chain(:direct, :response_parameters) { mock_response_parameters }'}, {'lnum': 140, 'col': 22, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '      subject { get :chargify_response, :status_code => 422, :call_id => ''test'', :user_id => fixture_plain_old_user.id }'}, {'lnum': 143, 'col': 26, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '        controller.send(:chargify_client).stub_chain(:direct, :response_parameters) { @mock_response_parameters }'}, {'lnum': 145, 'col': 23, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/controllers/purchases_controller_spec.rb', 'text': '        session[:last_chargify_call].should == ''test'''}, {'lnum': 1, 'col': 21, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/chargify.rb', 'text': 'require_dependency ''chargify'''}, {'lnum': 2, 'col': 17, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/chargify.rb', 'text': 'Factory.define(:chargify_signup, :class => ChargifyModels::Signup) do |s|'}, {'lnum': 3, 'col': 30, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/chargify.rb', 'text': '  s.product { Factory.build(:chargify_product) }'}, {'lnum': 6, 'col': 38, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/chargify.rb', 'text': '    signup.customer = Factory.build(:chargify_customer, :user => signup.user)'}, {'lnum': 7, 'col': 45, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/chargify.rb', 'text': '    signup.payment_profile = Factory.build(:chargify_payment_profile, :user => signup.user)'}, {'lnum': 12, 'col': 17, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/chargify.rb', 'text': 'Factory.define(:chargify_product, :class => ChargifyModels::Product) do |p|'}, {'lnum': 16, 'col': 17, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/chargify.rb', 'text': 'Factory.define(:chargify_customer, :class => ChargifyModels::Customer) do |c|'}, {'lnum': 19, 'col': 3, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/chargify.rb', 'text': '  ChargifyModels::ShippingAddress.fields.each do |f|'}, {'lnum': 24, 'col': 5, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/chargify.rb', 'text': '    ChargifyModels::ShippingAddress.from_wfx_address(Factory.build(:contact)).to_hash.each do |k,v|'}, {'lnum': 30, 'col': 17, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/chargify.rb', 'text': 'Factory.define(:chargify_payment_profile, :class => ChargifyModels::PaymentProfile) do |p|'}, {'lnum': 37, 'col': 3, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/chargify.rb', 'text': '  ChargifyModels::BillingAddress.fields.each do |f|'}, {'lnum': 42, 'col': 5, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/chargify.rb', 'text': '    ChargifyModels::BillingAddress.from_wfx_address(Factory.build(:address)).to_hash.each do |k,v|'}, {'lnum': 15, 'col': 36, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '        signup.customer.id = ''test chargify id'''}, {'lnum': 17, 'col': 25, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '      @user.stub_chain(:chargify_client, :calls, :read) { mock_response }'}, {'lnum': 21, 'col': 21, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '    it ''should save chargify customer id to the user'' do'}, {'lnum': 23, 'col': 13, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '      @user.chargify_customer_id.should == ''test chargify id'''}, {'lnum': 32, 'col': 13, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '        rec.chargify_call_id.should == ''test'''}, {'lnum': 33, 'col': 31, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '        rec.source.should == ''chargify'''}, {'lnum': 43, 'col': 43, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '  describe "#complete_member_profile_with_chargify_receipt" do'}, {'lnum': 50, 'col': 71, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '      @mock_response.response.signup.payment_profile = Factory.build(:chargify_payment_profile, :user => @user).to_hash'}, {'lnum': 51, 'col': 64, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '      @mock_response.response.signup.customer = Factory.build(:chargify_customer, :user => @user).to_hash'}, {'lnum': 52, 'col': 25, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '      @user.stub_chain(:chargify_client, :calls, :read) { @mock_response }'}, {'lnum': 55, 'col': 49, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '    subject {@user.complete_member_profile_with_chargify_receipt(Factory.build(:receipt, :chargify_call_id => ''test'')) }'}, {'lnum': 60, 'col': 9, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '        ChargifyModels::BillingAddress.wfx_mapping.each do |wfx_field, chargify_field|'}, {'lnum': 61, 'col': 84, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '          addr[wfx_field].should == @mock_response.response.signup.payment_profile[chargify_field]'}, {'lnum': 69, 'col': 9, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '        ChargifyModels::ShippingAddress.wfx_mapping.each do |wfx_field, chargify_field|'}, {'lnum': 70, 'col': 77, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/models/user_payments_spec.rb', 'text': '          cont[wfx_field].should == @mock_response.response.signup.customer[chargify_field]'}, {'lnum': 54, 'col': 20, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/spec_helper.rb', 'text': '    config.include ChargifyHelpers, :chargify => true'}, {'lnum': 43, 'col': 41, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/views/purchases/new.html.haml_spec.rb', 'text': '      @secure[''redirect_uri''].should == chargify_response_purchases_url(:user_id => @user.id, :package_id => @package_id)'}])
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
badd +12 lib/chargify/models.rb
badd +33 app/controllers/purchases_controller.rb
badd +11 public/javascripts/purchases/new.onready.js
badd +19 app/views/purchases/_order_information.html.haml
badd +42 config/routes.rb
badd +32 app/views/purchases/new.html.haml
badd +11 app/models/user/payments.rb
badd +1 app/helpers/application_helper.rb
badd +69 app/views/registrations/confirm.html.haml
badd +25 app/helpers/chargify_helper.rb
badd +15 app/helpers/receipt_helper.rb
badd +10 app/controllers/registrations_controller.rb
badd +1 db/migrate/20111014012537_create_receipts.rb
badd +43 app/models/receipt.rb
badd +1 app/controllers/application_controller.rb
badd +0 app/views/registrations/new.html.haml
silent! argdel *
set lines=45 columns=169
edit app/models/user/payments.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 42 + 84) / 169)
exe '2resize ' . ((&lines * 20 + 22) / 45)
exe 'vert 2resize ' . ((&columns * 65 + 84) / 169)
exe '3resize ' . ((&lines * 20 + 22) / 45)
exe 'vert 3resize ' . ((&columns * 60 + 84) / 169)
exe '4resize ' . ((&lines * 11 + 22) / 45)
exe 'vert 4resize ' . ((&columns * 46 + 84) / 169)
exe '5resize ' . ((&lines * 11 + 22) / 45)
exe 'vert 5resize ' . ((&columns * 79 + 84) / 169)
exe '6resize ' . ((&lines * 10 + 22) / 45)
exe 'vert 6resize ' . ((&columns * 126 + 84) / 169)
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
setlocal nofen
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
let s:l = 16 - ((7 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 07l
wincmd w
argglobal
edit app/helpers/receipt_helper.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 048l
wincmd w
argglobal
edit app/views/registrations/confirm.html.haml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 77 - ((3 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
77
normal! 022l
wincmd w
argglobal
edit app/views/registrations/new.html.haml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 46 - ((3 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
46
normal! 06l
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
exe 'vert 1resize ' . ((&columns * 42 + 84) / 169)
exe '2resize ' . ((&lines * 20 + 22) / 45)
exe 'vert 2resize ' . ((&columns * 65 + 84) / 169)
exe '3resize ' . ((&lines * 20 + 22) / 45)
exe 'vert 3resize ' . ((&columns * 60 + 84) / 169)
exe '4resize ' . ((&lines * 11 + 22) / 45)
exe 'vert 4resize ' . ((&columns * 46 + 84) / 169)
exe '5resize ' . ((&lines * 11 + 22) / 45)
exe 'vert 5resize ' . ((&columns * 79 + 84) / 169)
exe '6resize ' . ((&lines * 10 + 22) / 45)
exe 'vert 6resize ' . ((&columns * 126 + 84) / 169)
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
1resize 43|vert 1resize 42|2resize 20|vert 2resize 65|3resize 20|vert 3resize 60|4resize 11|vert 4resize 46|5resize 11|vert 5resize 79|6resize 10|vert 6resize 126|
tabnext 1
5wincmd w

" vim: ft=vim ro nowrap smc=128
