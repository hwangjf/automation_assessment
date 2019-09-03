# Set up and installation

As it stands, it is set up integrated with CircleCi and is monitored upon pushes. On the CircleCi continuous integration, it will install the gems and run rspec with the format documentation flag on in order to be able to clearly see the specs and the results. The price, star rating, and 'customers who also bought' are all just simply printed and will fail only if unable to be found correctly.

- run `bundle install` and run `rspec`
