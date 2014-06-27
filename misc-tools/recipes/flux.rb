# 
# Cookbook Name:: misc-tools
# Recipe:: flux
#

#include_recipe "apt"
#
#apt_repository 'flux' do
#    uri        'http://ppa.launchpad.net/kilian/f.lux/ubuntu/'
#    components ['main']
#    distribution node['lsb']['codename']
#    action :add
#    keyserver 'keyserver.ubuntu.com'
#    key 'B47A6629'
#end
#
#package 'fluxgui' do
#    action :install
#end

remote_file '/opt/fluxx64.tgz' do
    source 'https://justgetflux.com/linux/xflux64.tgz'
end


