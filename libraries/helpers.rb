module Opscode
  module Mysql
    class PlatformInfo
      def self.mysql_info
        @mysql_info ||= {
          'rhel' => {
            'default_data_dir' => '/var/lib/mysql',
            '5' => {
              'default_version' => '5.0',
              '5.0' => {
                'package_name' => 'mysql-server',
                'service_name' => 'mysqld'
              },
              '5.1' => {
                'package_name' => 'mysql51-mysql-server',
                'service_name' => 'mysql51-mysqld'
              },
              '5.5' => {
                'package_name' => 'mysql55-mysql-server',
                'service_name' => 'mysql55-mysqld'
              }
            },
            '6' => {
              'default_version' => '5.1',
              '5.1' => {
                'package_name' => 'mysql-server',
                'service_name' => 'mysqld'
              }
            },
            '7' => {
              'default_version' => '5.5',
              '5.1' => {
                'package_name' => 'mysql51-server',
                'service_name' => 'mysqld'
              },
              '5.5' => {
                'package_name' => 'mysql55-server',
                'service_name' => 'mysqld'
              }
            },
            '2013.03' => {
              'default_version' => '5.5',
              '5.5' => {
                'package_name' => 'mysql-server',
                'service_name' => 'mysqld'
              },
              '5.6' => {
                'package_name' => 'mysql-community-server',
                'service_name' => 'mysqld'
              }
            },
            '2013.09' => {
              'default_version' => '5.1',
              '5.1' => {
                'package_name' => 'mysql-server',
                'service_name' => 'mysqld'
              },
              '5.6' => {
                'package_name' => 'mysql-community-server',
                'service_name' => 'mysqld'
              }
            },
            '2014.03' => {
              'default_version' => '5.5',
              '5.1' => {
                'package_name' => 'mysql51-server',
                'service_name' => 'mysqld'
              },
              '5.5' => {
                'package_name' => 'mysql55-server',
                'service_name' => 'mysqld'
              },
              '5.6' => {
                'package_name' => 'mysql-community-server',
                'service_name' => 'mysqld'
              }
            }
          },
          'fedora' => {
            'default_data_dir' => '/var/lib/mysql',
            '19' => {
              'default_version' => '5.5',
              '5.5' => {
                'package_name' => 'community-mysql-server',
                'service_name' => 'mysqld'
              }
            },
            '20' => {
              'default_version' => '5.5',
              '5.5' => {
                'package_name' => 'community-mysql-server',
                'service_name' => 'mysqld'
              }
            }
          },
          'debian' => {
            'default_data_dir' => '/var/lib/mysql',
            '7' => {
              'default_version' => '5.5',
              '5.5' => {
                'package_name' => 'mysql-server-5.5',
                'service_name' => 'mysqld'
              }
            },
            'jessie/sid' => {
              'default_version' => '5.5',
              '5.5' => {
                'package_name' => 'mysql-server-5.5',
                'service_name' => 'mysqld'
              }
            },
            '10.04' => {
              'default_version' => '5.1',
              '5.1' => {
                'package_name' => 'mysql-server-5.1',
                'service_name' => 'mysqld'
              }
            },
            '12.04' => {
              'default_version' => '5.5',
              '5.5' => {
                'package_name' => 'mysql-server-5.5',
                'service_name' => 'mysqld'
              }
            },
            '13.04' => {
              'default_version' => '5.5',
              '5.5' => {
                'package_name' => 'mysql-server-5.5',
                'service_name' => 'mysqld'
              }
            },
            '13.10' => {
              'default_version' => '5.5',
              '5.5' => {
                'package_name' => 'mysql-server-5.5',
                'service_name' => 'mysqld'
              }
            },
            '14.04' => {
              'default_version' => '5.5',
              '5.5' => {
                'package_name' => 'mysql-server-5.5',
                'service_name' => 'mysql'
              },
              '5.6' => {
                'package_name' => 'mysql-server-5.6',
                'service_name' => 'mysql'
              }
            }
          },
          'smartos' => {
            'default_data_dir' => '/opt/local/lib/mysql',
            # Do this or now, until Ohai correctly detects a
            # smartmachine vs global zone (base64 13.4.0) from /etc/product
            '5.11' => {
              'default_version' => '5.5',
              '5.5' => {
                'package_name' => 'mysql-server',
                'service_name' => 'mysql'
              },
              '5.6' => {
                'package_name' => 'mysql-server',
                'service_name' => 'mysql'
              }
            }
          },
          'omnios' => {
            'default_data_dir' => '/var/lib/mysql',
            '151006' => {
              'default_version' => '5.5',
              '5.5' => {
                'package_name' => 'database/mysql-55',
                'service_name' => 'mysql'
              },
              '5.6' => {
                'package_name' => 'database/mysql-56',
                'service_name' => 'mysql'
              }
            }
          },
          'freebsd' => {
            'default_data_dir' => '/var/db/mysql',
            '10' => {
              'default_version' => '5.5',
              '5.5' => {
                'package_name' => 'mysql55-server',
                'service_name' => 'mysql-server'
              }
            }
          }
        }
      end
    end
  end
end
