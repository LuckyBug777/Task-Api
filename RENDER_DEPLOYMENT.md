# Task Management Service - Deployment Guide for Render

This guide provides instructions for deploying the Task Management Service API to Render.com.

## Prerequisites

- A Render.com account
- Git repository with your Task Management Service code

## Deployment Steps

### 1. Push your code to a Git repository

Make sure your code is pushed to a Git repository (e.g., GitHub, GitLab).

### 2. Create a new Web Service on Render

1. Log in to your Render account
2. Click on the "New +" button and select "Web Service"
3. Connect your Git repository
4. Configure your service with the following settings:
   - **Name**: task-service (or your preferred name)
   - **Environment**: Python
   - **Build Command**: `pip install -r requirements.txt`
   - **Start Command**: `gunicorn --chdir cmd main:app`

### 3. Configure Environment Variables

Add the following environment variables in the Render dashboard:
- `FLASK_ENV`: production
- `SECRET_KEY`: (generate a secure random key)
- `DATABASE_URL`: (will be automatically set if you create a Render PostgreSQL database)

### 4. Set up a PostgreSQL Database on Render (Optional)

1. In the Render dashboard, click "New +" and select "PostgreSQL"
2. Configure your database settings
3. Once created, Render will automatically set the `DATABASE_URL` environment variable for your web service

### 5. Deploy Your Application

1. Click "Create Web Service" to start the deployment process
2. Render will build and deploy your application automatically

## Automatic Deployments

By default, Render automatically deploys your application whenever you push changes to the main branch of your Git repository.

## Manual Database Migrations

If you need to run database migrations manually:

1. Go to your Web Service in the Render dashboard
2. Click on "Shell"
3. Run the following commands:
   ```
   flask db upgrade
   ```

## Checking Logs

To check application logs:
1. Go to your Web Service in the Render dashboard
2. Click on "Logs"

## Using Your Own Domain

To use a custom domain:
1. Go to your Web Service in the Render dashboard
2. Click on "Settings"
3. Scroll to the "Custom Domain" section and follow the instructions

## Scaling Your Application

Render makes it easy to scale your application. In the dashboard, you can:
- Increase the number of instances
- Upgrade to a more powerful plan
- Set up auto-scaling rules

For more information on scaling and other advanced features, refer to the [Render documentation](https://render.com/docs).
