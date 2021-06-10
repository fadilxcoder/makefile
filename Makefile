GIT_REPO = https://github.com/fadilxcoder/2-factor-auth-layout.git
REPO = codebase

install: git composer npm

git:
	@git clone $(GIT_REPO) $(REPO) &> /dev/null
	@cd $(REPO) && \
	rm -rf .git
	@echo "Git clone - OK"
	
composer:
	@composer require mustangostang/spyc &> /dev/null
	@echo "Composer install - OK"
	
npm:
	@npm install redis &> /dev/null
	@echo "NPM install - OK"

uninstall:
	@rm -rf node_modules/ vendor/ codebase/ composer.json composer.lock package-lock.json
	@echo "Uninstall - OK"