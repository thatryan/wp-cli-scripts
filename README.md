# WP CLI Scripts

Collection of BASH scripts for doing some bulk things in [WP-CLI](http://wp-cli.org/) and WordPress MultiSite.

Doing some network overhauls I had to do a lot of things to a lot of subsites, so figuring an easier way to do it in bulk was helpful. This collection will grow I am sure.

So far we have

* Bulk export
* Bulk import
* Bulk option updating
* Bulk remove users of role

## Overview

#### Bulk Export

This option allows you to set a list of of sites in an array and it will export to a directory in the form of `sitename.xml`. Comments in the script will help you too.

##### Options

You can alter the script to include standard [export options](http://wp-cli.org/commands/export/), for example I add in `--post_type=post,page,attachment,nav_menu_item` to limit the export content to what we needed.

#### Bulk Import

This script will take an array of site files, such as those previously generated in an export, and import them into their corresponding sites in the network.

##### Options

You can alter the script to include standard [export options](http://wp-cli.org/commands/import/), for example I add in `--authors=skip --skip-themes=enfold --quiet` to streamline the import process and stop loading of a theme that causes annoying messages.

#### Bulk Option Updating

I had to update the "discourage search engine" setting for 60 sites, so creating an array of the sites and then iterating through passing in the option to update the setting was much simpler.

#### Bulk Remove Users of Role

This one I had a site with ~35,000 subscriber users that I needed gone. This script is not dependent on WP-CLI but I invoked it from there and want to remember it. Big thanks to [Gabor Javorszky](https://twitter.com/javorszky) for this SQL and knowledge!

This one I ran by inputting the file to wp-cli like this, `wp db query < kill-user.sql`

## Usage

For most of these you are going to need SSH access to your server. I would get them locally and then edit what you need, then copy to your server into the root of the WordPress install.

```bash
git clone https://github.com/thatryan/wp-cli-scripts.git
```

Edit and stuff, then put it where it needs to go!

`scp ~/location-of-script.sh user@remote.com:~/path-to/wordpress-install.com`

## Issues

Questions, bugs, comments, or suggestions? [let me know](https://github.com/thatryan/wp-cli-scripts/issues)!


## License

MIT &copy; [Ryan Olson](http://thatryan.com/)
