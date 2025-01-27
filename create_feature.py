import os

def create_project_structure(base_name):
    os.makedirs(base_name, exist_ok=True)

    files = [f'{base_name}.dart', 'README.md']
    for file in files:
        open(os.path.join(base_name, file), 'w').close()

    structure = {
        'di': ['providers.dart'],
        'managers': ['managers.dart'],
        'models': ['models.dart'],
        'repositories': ['repositories.dart'],
        'services': ['services.dart'],
        'state': {
            'state.dart': None,
            'state_holders': ['state_holders.dart'],
            'state_models': ['state_models.dart']
        },
        'ui': ['ui.dart']
    }

    def create_substructure(parent_path, structure):
        for key, value in structure.items():
            if isinstance(value, list):
                folder_path = os.path.join(parent_path, key)
                os.makedirs(folder_path, exist_ok=True)
                for file in value:
                    open(os.path.join(folder_path, file), 'w').close()
            elif isinstance(value, dict):
                folder_path = os.path.join(parent_path, key)
                os.makedirs(folder_path, exist_ok=True)
                create_substructure(folder_path, value)
            else:
                open(os.path.join(parent_path, key), 'w').close()

    create_substructure(base_name, structure)
    print(f"Структура проекта '{base_name}' успешно создана!")

folder_name = input("Введите название папки для проекта: ")
create_project_structure(folder_name)
