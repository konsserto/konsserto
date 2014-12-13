Command = use('@Konsserto/Component/Console/Command')
InputArgument = use('@Konsserto/Component/Console/Input/InputArgument')
InputOption = use('@Konsserto/Component/Console/Input/InputOption')
cc = use('cli-color')

class FooCommand extends Command


	create: () ->
		@setName('foo')
		@setDescription('Foo command')
		@setDefinition()
		@setHelp("  The %command.name% command is a foo command:\n  %command.full_name%")


	execute: (input) ->



	interact: (input) ->
		val = @ask("Are you ok ? ")
		@write("\n Ok so you are : "+val)

module.exports = FooCommand;