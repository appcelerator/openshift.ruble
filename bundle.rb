require 'ruble'

bundle 'OpenShift' do |bundle|
  bundle.author = 'Appcelerator, Inc.'
  bundle.copyright = "Copyright 2012 Appcelerator. Distributed under the MIT license."
  bundle.description = 'Support for OpenShift integration'
  bundle.display_name = 'OpenShift'
  bundle.repository = "git@github.com:appcelerator/openshift.ruble.git"

  bundle.menu 'OpenShift' do |menu|
    menu.command "Delete Remote App"
  end
end
