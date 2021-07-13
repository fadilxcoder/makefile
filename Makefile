# Loading the data in .env
ifneq (,$(wildcard ./.env))
    include .env
    export
endif

all: install

install: git composer npm assets
#	$@ : display `install`, $? : display all prerequisites newer than the target, $^ : display all
	@echo "Completed !"

git:
	@git clone "${GIT_REPO}" "${REPO}" &> /dev/null
	@cd "${REPO}" && \
	rm -rf .git
	@echo "Git clone - OK"

composer:
	@cd "${REPO}" && \
	composer install &> /dev/null
	@echo "Composer install - OK"

npm:
	@cd "${REPO}" && \
	npm install &> /dev/null
	@echo "NPM install - OK"

assets:
	@cd "${REPO}" && \
	npm run build &> /dev/null && \
	npm run build-css &> /dev/null
	@echo "Compiling assets - OK"

launch:
	@echo "App running on IP : ${APP_PORT}"
	@php -S "${APP_PORT}" -t ./"${REPO}" &> /dev/null

clean:
	@rm -rf "${REPO}"
	@echo "Uninstall - OK"

.PHONY : install clean launch assets npm composer git