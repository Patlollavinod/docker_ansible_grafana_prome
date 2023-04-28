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
                    sh "ansible-playbook -i inventory install-docker.yml"
                                
            }
        }
        stage('Install Prometheus') {
            steps {
                   
                    sh "ansible-playbook -i inventory install-prometheus.yml"
            }
        }
        stage('Install NodeExporter') {
            steps {
               
                    sh "ansible-playbook -i inventory install-nodeexpprter.yml"
                )
            }
        }
        stage('Install Loki') {
            steps {
                
                    sh "ansible-playbook -i inventory install-loki.yml"
                )
            }
        }
        stage('Install Grafana') {
            steps {
               
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
