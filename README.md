# NOTES

- Use `@` to supress display in terminal
- Use `tabs` for indentation
- Using `.env` for configuration
- `.PHONY` specify the targets that are not files (prevent same file name issues)
# Usage

- `make install` - Installation process
- `make launch` - Launching for web browser - *App running on IP :  127.0.0.1:8588*
- `make clean` - Remove app

# Availables commands : 
- - `make install` - Combining `git composer npm assets`
- - `make git` - Cloning repo & removing unwanted files/folders
- - `make npm` - Installing node packages
- - `make composer` - Installing php packages
- - `make assets` - Building the assets for `dist` folder
- - `make clean` - Delete repo and clean environment
- - `make launch` - Launch the application on specified IP