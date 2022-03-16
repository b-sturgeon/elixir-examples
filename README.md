### Env setup
From https://code.visualstudio.com/docs/remote/create-dev-container#_automate-dev-container-creation:

1. In a new VSCode project, enter `F1` and enter the command 'Remote-Containers: Add Development Container Configuration Files' and select the 'Elixir' docker.

2. Enter `F1` again and enter the command, 'Remote-Containers:Open workspace in container'. Wait. Once complete, create a new VSCode terminal window. It should start in a container (and not on your host machine).

3. Note you may edit the contents of `.devcontainer/` to get whatever env you'd like.

4. Rejoice and live better.


### Playing around
#### Scripts
Elixir scripts use the `.exs` file-extension. They can be run like `elixir script.exs`.

#### REPL
From: https://elixirschool.com/en/lessons/basics/basics#trying-interactive-mode-2
In the container, type `iex` to start an interactive Elixir REPL.

Use `iex <filename>` to load an Elixir file into the REPL.

#### Projects
Use `mix <project name>` to start a new project.