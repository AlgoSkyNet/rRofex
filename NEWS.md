# rRofex 0.0.1.0001

## Changes

* Added a `NEWS.md` file to track changes to the package.
* Using `pkgdown` to build the documentation.

# rRofex 0.0.1.0000

## New Features

* *xOMS* support. Ask your broker for credentials.
* Use of S4 objects to save connections. This means that you can have different connections on the same R session.

## Changes

* Close issue #12 now that the connection parameters can be access with `token()`, `base_url()` and `login_date_time()`

## Important

**This version is not backwards compatible due to the way connections work now.**

# rRofex 0.0.0.9008

## New Features

* New *time_in_force* available. Now supports GTD. 
* New Iceberg order.

## Changes

* Sovled issue #8 

## Acknowledgement

* Thanks @jfgomezok  for your PR solving #8  

# rRofex 0.0.0.9007

## New Features

* New *time_in_force* available. Now supports IOC and FOK.

## Changes

* #6 Corrected mistakes on the documentation.

## BUG FIXES

* #6 'Environment' variable for log-in was misspelled. 

## Acknowledgement

* Thanks @kenarab for your PR solving #6 

