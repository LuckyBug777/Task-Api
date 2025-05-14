#!/bin/bash
# Script to deploy the task-service to Render

echo "Preparing Task Service for Render deployment..."

# Check if git is initialized
if [ ! -d .git ]; then
  echo "Initializing git repository..."
  git init
  git add .
  git commit -m "Initial commit for Render deployment"
else
  echo "Git repository already initialized."
  git add .
  git commit -m "Update for Render deployment"
fi

echo "Deployment preparation complete! Follow these steps:"
echo "1. Push this repository to GitHub/GitLab"
echo "2. Log in to Render.com"
echo "3. Create a new Web Service pointing to this repository"
echo "4. Use the configuration from render.yaml or set manually:"
echo "   - Build Command: pip install -r requirements.txt"
echo "   - Start Command: gunicorn --chdir cmd main:app"
echo ""
echo "For detailed instructions, see RENDER_DEPLOYMENT.md"
