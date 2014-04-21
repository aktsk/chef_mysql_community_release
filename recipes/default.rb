rpm_path = node['mysql_community_release']['rpm_path']

execute "remove_mysql_repository" do
  command "yum remove -y 'mysql*'"
  only_if "rpm -qa | grep mysql | grep -v mysql-community"
end

execute "add_mysql_community_repository" do
  command "yum install -y http://repo.mysql.com/#{rpm_path}"
  not_if "rpm -qa | grep -q mysql-community-release"
end
