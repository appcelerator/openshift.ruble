
command 'Delete Remote App' do |cmd|
  cmd.output = :discard
  cmd.invoke do |context|
      res = Ruble::UI.request_string(:title => 'Delete Remote App', :prompt => 'Please enter the application name:')
    context.exit_discard unless res
    res = res.to_s

    handler = com.appcelerator.titanium.deploy.openshift.handlers.DeleteAppHandler.new()
    handler.setSelectedApplication(res)
    handler.execute(org.eclipse.core.commands.ExecutionEvent.new())
  end
end
