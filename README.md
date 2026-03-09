# ⚙️ GitHub Actions

A collection of GitHub Actions workflows and automation configurations for streamlining CI/CD pipelines, building , testing, deployment .

---

## 📁 Repository Structure

```
.
├── .github/
│   └── workflows/
│       ├── ci.yml          # Continuous Integration
│       ├── cd.yml          # Continuous Deployment
│       ├── release.yml     # Release automation
│       └── lint.yml        # Linting & code quality
├── actions/
│   └── custom-action/      # Custom reusable actions
│       ├── action.yml
│       └── README.md
└── README.md
```

---

## 🚀 Workflows

### CI — Continuous Integration
Runs on every push and pull request to validate code quality and run tests.

- ✅ Linting
- ✅ Unit tests
- ✅ Build verification

### CD — Continuous Deployment
Triggered on merges to `main`. Deploys the application to the target environment.

- 🚢 Staging deployment on PR merge
- 🚀 Production deployment on release tag

### Release
Automates versioning and changelog generation when a new release tag is pushed.

### Lint
Enforces code style and quality standards across the codebase.

---

## 🔧 Usage

To use these workflows in your repository, reference them in your `.github/workflows/` directory:

```yaml
name: CI

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Run tests
        run: |
          npm install
          npm test
```

### Reusable Workflow Example

```yaml
jobs:
  call-workflow:
    uses: your-org/your-repo/.github/workflows/ci.yml@main
    with:
      environment: production
    secrets: inherit
```

---

## 📥 Inputs & Outputs

| Input         | Description                        | Required | Default      |
|---------------|------------------------------------|----------|--------------|
| `environment` | Target deployment environment      | No       | `staging`    |
| `node-version`| Node.js version to use             | No       | `20`         |
| `run-tests`   | Whether to run the test suite      | No       | `true`       |

| Output        | Description                        |
|---------------|------------------------------------|
| `build-id`    | Unique ID for the current build    |
| `deploy-url`  | URL of the deployed application    |

---

## 🔐 Required Secrets

Configure the following secrets in your repository settings under **Settings → Secrets and variables → Actions**:

| Secret            | Description                          |
|-------------------|--------------------------------------|
| `DEPLOY_KEY`      | SSH or API key for deployments       |
| `REGISTRY_TOKEN`  | Token for container registry access  |
| `SLACK_WEBHOOK`   | Webhook URL for Slack notifications  |

---

## 🛠️ Prerequisites

- GitHub repository with Actions enabled
- Appropriate permissions for secrets and environments
- (Optional) Self-hosted runner if using custom infrastructure

---

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repository
2. Create a new branch: `git checkout -b feature/my-workflow`
3. Commit your changes: `git commit -m 'Add new workflow'`
4. Push the branch: `git push origin feature/my-workflow`
5. Open a Pull Request

Please ensure all workflows are tested and include inline comments.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

## 📬 Contact

For questions or suggestions, open an issue or reach out via [GitHub Discussions](../../discussions).
