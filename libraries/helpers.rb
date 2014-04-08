module Opscode
  module Mysql
    class PlatformInfo
      def self.mysql_info
        @mysql_info ||= {
          'rhel' => {
            'default_data_dir' => '/var/lib/mysql',
            '5' => {
              'default_version' => '5.0',
              '5.0' => 'mysql-server',
              '5.1' => 'mysql51-mysql-server',
              '5.5' => 'mysql55-mysql-server'
            },
            '6' => {
              'default_version' => '5.1',
              '5.1' => 'mysql-server'
            },
            '7' => {
              'default_version' => '5.5',
              '5.1' => 'mysql51-server',
              '5.5' => 'mysql55-server'
            },
            '2013.09' => {
              'default_version' => '5.6',
              '5.1' => 'mysql-server',
              '5.6' => 'mysql-community-server'
            },
            '2014.03' => {
              'default_version' => '5.6',
              '5.1' => 'mysql51-server',
              '5.5' => 'mysql55-server',
              '5.6' => 'mysql-community-server'
            }
          },
          'fedora' => {
            'default_data_dir' => '/var/lib/mysql',
            '19' => {
              'default_version' => '5.5',
              '5.5' => 'community-mysql-server'
            },
            '20' => {
              'default_version' => '5.5',
              '5.5' => 'community-mysql-server'
            }
          },
          'debian' => {
            'default_data_dir' => '/var/lib/mysql',
            '7' => {
              'default_version' => '5.5',
              '5.5' => 'mysql-server-5.5'
            },
            '10.04' => {
              'default_version' => '5.1',
              '5.1' => 'mysql-server-5.1'
            },
            '12.04' => {
              'default_version' => '5.5',
              '5.5' => 'mysql-server-5.5'
            },
            '13.10' => {
              'default_version' => '5.5',
              '5.5' => 'mysql-server-5.5'
            }
          },
          'smartos' => {
            'default_data_dir' => '/opt/local/lib/mysql',
            # Do this or now, until Ohai correctly detects a
            # smartmachine vs global zone (base64 13.4.0) from /etc/product
            '5.11' => {
              'default_version' => '5.5',
              '5.5' => 'mysql-server',
              '5.6' => 'mysql-server'
            }
          },
          'omnios' => {
            'default_data_dir' => '/var/lib/mysql',
            '151006' => {
              'default_version' => '5.5',
              '5.5' => 'database/mysql-55',
              '5.6' => 'database/mysql-56'
            }
          }
        }
      end
    end
  end
end
