#!/bin/bash

# Check if project name is provided
if [ -z "$1" ]; then
    echo "Usage: ./setup_project.sh <project_name>"
    exit 1
fi

PROJECT_NAME=$1

# Create project directory if it doesn't exist
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME"

# Create virtual environment
echo "Creating virtual environment..."
python3 -m venv .venv

# Activate virtual environment
echo "Activating virtual environment..."
source .venv/bin/activate

# Create .gitignore
echo "Creating .gitignore..."
cat > .gitignore << 'EOL'
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
.venv/
venv/
ENV/
env/
.env

# Jupyter Notebook
.ipynb_checkpoints
*/.ipynb_checkpoints/*

# macOS
.DS_Store
.AppleDouble
.LSOverride

# IDE
.idea/
.vscode/
*.swp
*.swo

# Distribution / packaging
dist/
build/
*.egg-info/
EOL

# Create requirements.txt
echo "Creating requirements.txt..."
cat > requirements.txt << 'EOL'
python-dotenv>=1.0.0
EOL

# Initialize git repository
echo "Initializing git repository..."
git init

# Install requirements
echo "Installing requirements..."
pip install -r requirements.txt

echo "Project setup complete! 🎉"
echo "To activate the virtual environment, run:"
echo "source .venv/bin/activate" 