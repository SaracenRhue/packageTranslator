from os import system as cmd
import yaml


with open('sr/config.yml', 'r+') as file:
    config = yaml.safe_load(file)
    managers = config['managers']

    for item in managers:
        if cmd(item) != 32512:
            manager = item
    manager = {'system_manager': manager}
    yaml.dump(manager, file)