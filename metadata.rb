name              "mysql_community_release"
maintainer        "Akatsuki, Inc."
maintainer_email  "y.tanaka@aktsk.jp"
license           "MIT"
description       "Install the mysql-server community release ver."
long_description  "Install the mysql-server community release ver."
version           "0.0.1"

%w{redhat}.each do |os|
  supports os
end

depends 'mysql'
