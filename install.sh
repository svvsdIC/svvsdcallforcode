#!/bin/false
#This script is not intended to be run manually:
#It should be run as:
#bash <(curl -fsSL page)

run() {

	echo -ne Really Install? [y/N]
	read choice
	if [[ "${choice,,}" != "y" ]]
	then
		  exit 0
	  fi

	  git clone https://github.com/svvsdIC/svvsdcallforcode.git
	  cd svvsdcallforcode

	  exec ./configure.sh --run-app $args

  }

  run
