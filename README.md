# Apache Website Deployment

This repository contains both manual instructions and automated scripts for deploying website templates to Apache web servers on macOS and Linux systems.

## Getting Started

### Prerequisites

- macOS or Linux system
- Administrative/sudo privileges
- Internet connection

### Clone the Repository

```bash
git clone https://github.com/EmmyAnieDev/Apache-Deployment.git
cd Apache-Deployment
chmod +x macos-deployment.sh linux-deployment.sh
```

## Deployment Options

### Manual Deployment

For manual deployment instructions, please refer to:
- `manual_deployment_steps.md` - Manual deployment steps for macOS and Linux

### Automated Deployment

To use the automated deployment scripts:

1: Give proper permission before running the script:

```bash
chmod +x <script-name>
```

2: Execute the script:

For macOS:
```bash
./macos-deployment.sh
```

For Linux:
```bash
./linux-deployment.sh
```

Note: You will be prompted for your password as these scripts use sudo to perform administrative tasks.

### Customizing Templates

To deploy a different template, open the script in a text editor and modify the template URL.

## Troubleshooting

- If the website doesn't display correctly after deployment, try clearing your browser cache
- If Apache doesn't start, check its status and logs