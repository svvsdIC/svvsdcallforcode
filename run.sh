#!/bin/bash
# Bash Startup Script
# Note: Requires Bash; Will not run in Sh


#Process Command Line Options
args=($@)
j=0
while [[ "${args[$j]}" != "" ]]
do
    case "${args[$j]}" in
        -p | --port ) ((j++))
                      port=${args[$j]}
                      ;;
        -s | --skip-install ) skip_install=true
                              ;;
        --help ) help=true
                 ;;
	-p | --production ) NODE_ENV=production
		;;
    esac
    ((j++))
done

#Help Command
if [[ "$help" == true ]]
then
    cat << EOM
Usage: ./start.sh [OPTION]...
Start the application.
    -p, --port port     Set the application port.
    -s, --skip-install  Skip installing dependencies.
    --help              Display this help and exit.

EOM
    exit 0
fi

#Ask for port if not already set in options
if [[ "$port" == "" ]]
then
    echo -n "Port:"
    read port
fi

#Skip installing dependencies if set in options
if [[ "$skip_install" != true ]]
then
npm install
fi

PORT=$port npm start
