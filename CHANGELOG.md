CouchDB Cookbook CHANGELOG
==========================
This file is used to list changes made in each version of the CouchDB cookbook.

v3.0.0
------
* Complete rewrite of cookbook as 2 custom resources
* Currently only installs CouchDB from source as packages are not available
* **Supports CouchDB 2.0+**
  * If CouchDB 1.x is required, use v2.5.3 of this cookbook.
* Supports full-text search add-on

v2.5.3
------
* **Final release explicitly targeting CouchDB 1.x.**
* Multiple fixes for CentOS, recent Debian/Ubuntu builds
* Prefer /usr/lib64/ over /usr/lib when present
* Store CouchDB UUID into host-specific local.ini file
* New database LWRP provider
* Source downloaded via https (closes #40)
* Clean up build directory when building from source
* Fixed init script problem on multiple platforms
* Documentation received a complete overhaul
* Many style cleanups for Ruby and Chef 12/13
* Full support for test-kitchen, rubocop, rake, foodcritic, etc.
  * Includes basic smoke test

v2.5.2
------
* Add nohup to running couch to make it work with Test Kitchen
* adding case for libmozjs package for ubuntu 14.04
* Specify upstart service provider for ubuntu >=13.10

v2.5.1
------
* New cookbook maintainer
* Update default version to CouchDB 1.5.0
* Update source download URL to new format
* Fix testkitchen support
* Fix stray "w" in 1.5.0

v2.5.0
------
* Porting to use cookbook yum ~> 3.0
* Fixing up style to pass rubocop
* Updating testing bits

v2.4.8
------
* fixing metadata version error. locking to 3.0

v2.4.6
------
* Locking yum dependency to '< 3'

v2.4.4
------
### Bug
- **[COOK-3659](https://tickets.opscode.com/browse/COOK-3659)** - Don't change directory ownership of `/var/run`

v2.4.2
------
### Bug
- **[COOK-3323](https://tickets.opscode.com/browse/COOK-3323)** - Force `local.ini` file changes to restart CouchDB

v2.4.0
------
- [COOK-1629] - source recipe not working on centos 5.8
- [COOK-2608] - Update source install version to 1.2.1

v2.2.0
------
- [COOK-1905] - It should be possible to customize the local.ini file in couchdb cookbook

v2.1.0
------
- [COOK-2139] - fedora has couchdb package, no EPEL required

v2.0.0
------
Major version bump due to use of platform_family (only available on newer versions of ohai/chef).

- [COOK-1838] - Switch to platform_family approach to support scientific

v1.0.4
------
- [COOK-1623] - add attribute to prevent erlang installation
- [COOK-1627] - set attributes at default precedence instead of normal (set)

v1.0.2
------
- [COOK-1399] - make bind address an attribute

v1.0.0
------
- Create group for couchdb
