Command = use('@Konsserto/Component/Console/Command')
InputArgument = use('@Konsserto/Component/Console/Input/InputArgument')
InputOption = use('@Konsserto/Component/Console/Input/InputOption')
cc = use('cli-color')

class FlorianCommand extends Command


	create: () ->
		@setName('florian:monfion')
		@setDescription('Commande de florian')
		@setDefinition([new InputOption("yell","y|i",InputOption.VALUE_REQUIRED,"Pour crier")])
		@setHelp("  The %command.name% vous crie d'aller vous coucher. Exemple:\n  %command.full_name%")


	execute: (input) ->


	interact: (input)->
		valeur = @ask('Donne une valeur connard')
		@write(valeur)

module.exports = FlorianCommand;