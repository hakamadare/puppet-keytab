# keytab

This module provides a secure mechanism for deploying Kerberos principals into keytabs on Puppet-managed hosts.

## Usage



## Requirements

* This module requires Puppet 2.6.3 or later.

* This module has been tested on RHEL 6 and Ubuntu 10 LTS; other similar distributions may or may not work.

* This module requires the `puppetlabs-stdlib` module.

* The puppetmaster MUST be able to run a remote `kadmin` command, authenticating only with its host principal.  The puppetmaster's host principal requires only a restricted subset of privileges (this syntax is taken from MIT Kerberos; `man kadmind` for more information):  
    A Disallows the addition of principals or policies in the database.  
    D Disallows the deletion of principals or policies in the database.  
    M Disallows the modification of principals or policies in the database.  
    c Allows the changing of passwords for principals in the database.  
    i Allows inquiries to the database.  
    l Allows the listing of principals or policies in the database.  

* The puppetmaster MUST have the `kadmin` and `openssl enc` utilities installed; look in **keytab::params** for some platform-specific packages to install to meet these dependencies.

* The user that Puppet runs as on the puppetmaster MUST be root or have the ability to `sudo root` without providing a password.

* The puppetmaster MUST have access to the following Ruby libraries:
  * `base64`
  * `open3`
  * `pathname`
  * `tmpdir`

License
-------


Contact
-------


Support
-------

Please log tickets and issues at our [Projects site](http://projects.example.com)
