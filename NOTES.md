# A shell script to set up a new project

---

The script will...

1. Create a new directory with that name
2. Set up a virtual environment inside it
3. Create the .gitignore and requirements.txt files
4. Initialise a git repository
5. Install the basic requirements

This makes my setup script executable.

```bash
chmod +x setup_project.sh
```

This would run it. Please note that the `my_new_project`is the name of the new project to be created.

```bash
./setup_project.sh my_new_project
```
