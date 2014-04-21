mysql_community_release Cookbook
================================
This cookbook is extend the mysql cookbook with the "MySQL Community Server"

Requirements
------------

#### packages
- `mysql` - mysql_community_release needs mysql to use.

Attributes
----------

#### mysql_community_release::default

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['mysql_community_release']['rpm_path']</tt></td>
    <td>String</td>
    <td>RPM version of mysql community server</td>
    <td><tt>mysql-community-release-el6-5.noarch.rpm</tt></td>
  </tr>
</table>

Recipes
-----
### default
This recipe only adds a mysql-community-release of the yum repository.

### mysql_community_release::add_service
This recipe calls a `default` and `mysql::mysql_service` recipes.

Usage
-----

#### mysql_community_release::default
Just include `mysql_community_release` in your node's `run_list`:

```json
{
  "mysql": {
    "version": "5.6",
    "server_root_password": "supersecretpassword",
    "server_repl_password": "supersecretpassword"
  }
  "run_list": [
    "recipe[mysql_community_release]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Yusuke Tanaka (Akatsuki, Inc.)

under MIT License
