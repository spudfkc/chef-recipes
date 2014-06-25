#
# Cookbook Name:: misc-tools
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "s3cmd" do
    action :install
done

package "tree" do
    action :install
done

package "git-gui" do
    action :install
done

package "virtualbox" do
    action :install
done
