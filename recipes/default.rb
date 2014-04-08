rpm_path = node['mysql_community_release']['rpm_path']

execute "add_mysql_community_repository" do
  command "yum install -y http://repo.mysql.com/#{rpm_path}"
  not_if "rpm -qa | grep -q mysql-community-release"
end

mysql_service node['mysql']['service_name'] do
  data_dir node['mysql']['data_dir']
  not_if "rpm -qa | grep -q mysql-community-server"
end