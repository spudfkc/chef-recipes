#
# Cookbook Name:: vimrc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
username = node.default['vimrc']['user']

log "username" do
    level :error
    message "this is the value of username: #{username}"
    action :write
end

userhome = "/home/ncc"

directory userhome + "/.vim/autoload" do
    owner username
    group username
    action :create
end

directory userhome + "/.vim/bundle" do
    owner username
    group username
    action :create
end

remote_file userhome + "/.vim/autoload/pathogen.vim" do
    source "https://tpo.pe/pathogen.vim"
end

remote_file "/etc/vim/vimrc.local" do
    source "https://gist.githubusercontent.com/spudfkc/8248076/raw/ee877d62d8f8fd97464f998340f78ecf37d752b0/.vimrc"
end

directory userhome + "/.vim/colors" do
    owner  username
    group  username
    action :create
end

remote_file userhome + "/.vim/colors/Monokai.vim" do
    source "https://gist.githubusercontent.com/spudfkc/8248094/raw/05a9db92696ccade8e024e44932d689dcfa87eeb/Monokai.vim"
end

