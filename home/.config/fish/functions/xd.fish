function xd --description 'Activate xdebug for command line php'
	switch $argv[1]
		case 'on'
			set -xg XDEBUG_CONFIG 'idekey=phpstorm'
			echo Xdebug activated
		case 'off'
			set -e XDEBUG_CONFIG
			echo Xdebug deactivated
	end
end
