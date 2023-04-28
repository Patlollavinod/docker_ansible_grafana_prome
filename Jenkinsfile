pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from version control system
                checkout scm
            }
        }
        stage('Install Docker') {
            steps {
                // Run Ansible playbook to install Docker
                ansiblePlaybook(
                    playbook: 'install-docker.yml',
                    inventory: 'inventory'
                )
            }
        }
        stage('Install Prometheus') {
            steps {
                // Run Ansible playbook to install Prometheus
                ansiblePlaybook(
                    playbook: 'install-prometheus.yml',
                    inventory: 'inventory'
                )
            }
        }
        stage('Install NodeExporter') {
            steps {
                // Run Ansible playbook to install NodeExporter
                ansiblePlaybook(
                    playbook: 'install-nodeexporter.yml',
                    inventory: 'inventory'
                )
            }
        }
        stage('Install Loki') {
            steps {
                // Run Ansible playbook to install Loki
                ansiblePlaybook(
                    playbook: 'install-loki.yml',
                    inventory: 'inventory'
                )
            }
        }
        stage('Install Grafana') {
            steps {
                // Run Ansible playbook to install Grafana
                ansiblePlaybook(
                    playbook: 'install-grafana.yml',
                    inventory: 'inventory'
                )
            }
        }
        stage('Clean Up') {
            steps {
                sh 'ansible-playbook clean-up.yml -i inventory'
            }
        }
    }
}
