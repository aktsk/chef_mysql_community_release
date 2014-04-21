include_recipe "default"

mysql_service node['mysql']['service_name'] do
  data_dir node['mysql']['data_dir']
  not_if "rpm -qa | grep -q mysql-community-server"
end
