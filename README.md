# Fresh Todo App

Simple Node.js todo application deployed on AWS VMs via Humanitec Platform.

## Features

- Clean Node.js/Express backend
- Simple HTML/JS frontend  
- VM-based deployment with Auto Scaling Groups
- CI/CD via GitHub Actions
- Health checks and monitoring

## Deployment

Pushes to `main` automatically deploy via GitHub Actions to AWS VMs using Humanitec Platform Orchestrator.

## Local Development

```bash
npm install
npm start
```

Visit http://localhost:3000