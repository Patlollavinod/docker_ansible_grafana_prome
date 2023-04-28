pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from version control system
                checkout([$class: 'GitSCM', branches: [[name: '*/ansible_jenkins']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Patlollavinod/docker_ansible_grafana_prome.git']]])
            }
        }
        stage('Install Docker') {
            steps {
                    playbook: 'install-docker.yml',
                    inventory: 'inventory'
                    sh "ansible-playbook -i inventory install-docker.yml"
                                
            }
        }
        stage('Install Prometheus') {
            steps {
                    playbook: 'install-prometheus.yml',
                    inventory: 'inventory'
                    sh "ansible-playbook -i inventory install-prometheus.yml"
            }
        }
        stage('Install NodeExporter') {
            steps {
                // Run Ansible playbook to install NodeExporter
                ansiblePlaybook
                    playbook: 'install-nodeexporter.yml',
                    inventory: 'inventory'
                    sh "ansible-playbook -i inventory install-nodeexpprter.yml"
                )
            }
        }
        stage('Install Loki') {
            steps {
                // Run Ansible playbook to install Loki
                ansiblePlaybook(
                    playbook: 'install-loki.yml',
                    inventory: 'inventory'
                    sh "ansible-playbook -i inventory install-loki.yml"
                )
            }
        }
        stage('Install Grafana') {
            steps {
                // Run Ansible playbook to install Grafana
                ansiblePlaybook(
                    playbook: 'install-grafana.yml',
                    inventory: 'inventory'
                    sh "ansible-playbook -i inventory install-grafana.yml"
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
