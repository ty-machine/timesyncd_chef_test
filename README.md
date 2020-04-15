# Running

- You can choose to either go it your own and run Chef manually on Vagrant.  To do so I needed to `bundle exec knife supermarket install systemd -o cookbooks`.

- "Better yet" you can use Kitchen that can manage a whole set of different targets, platforms, etc. and is setup to run unit tests for you (if we had them).  This *also* does the Chef dependency resolution for you if you want it.