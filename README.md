# 🚀 Git Workflow DevOps

![CI Pipeline](https://github.com/YOSO98/git-workflow-devops/actions/workflows/ci.yml/badge.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Version](https://img.shields.io/badge/version-v1.0.0-green.svg)

Projet Git Workflow professionnel - Formation DevOps Junior

## 📁 Structure du projet
```
git-workflow-devops/
├── .github/
│   └── workflows/
│       └── ci.yml        # Pipeline CI/CD
├── scripts/
│   └── monitoring.sh     # Script monitoring système
├── .gitignore            # Gitignore complet DevOps
├── CHANGELOG.md          # Historique des versions
└── README.md
```

## 🌿 Git Flow

| Branche | Rôle |
|---|---|
| `main` | Production - code stable |
| `develop` | Intégration des features |
| `feature/*` | Nouvelles fonctionnalités |
| `release/*` | Préparation des releases |
| `hotfix/*` | Corrections urgentes |

## ✍️ Conventional Commits

| Type | Usage |
|---|---|
| `feat` | Nouvelle fonctionnalité |
| `fix` | Correction de bug |
| `ci` | Pipeline CI/CD |
| `chore` | Maintenance |
| `docs` | Documentation |

## 🐚 Script Monitoring
```bash
# Lancer le script
bash scripts/monitoring.sh
```

Affiche en temps réel :
- 🖥️ CPU utilisé (%)
- 🧠 RAM utilisée (MB)
- 💾 Disque utilisé (%)
- ⚠️ Alertes si > 80%

## ⚙️ Pipeline CI/CD

La pipeline se déclenche automatiquement sur :
- Push sur `develop` et `feature/*`
- Pull Request vers `main`

Elle vérifie :
- ✅ Absence de fichiers sensibles (.env)
- ✅ Validité des scripts Bash
- ✅ Structure du projet

## 📦 Versions

| Version | Date | Description |
|---|---|---|
| v1.0.0 | 2026-02-20 | Première version stable |

## 📄 Licence

MIT License - voir [LICENSE](LICENSE)
