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
                    sh "pwd"
                    sh "ansible-playbook -i inventory.yml install-docker.yml"
                                
            }
        }
        #
        stage('Install NodeExporter') {
            steps {
               
                    sh "ansible-playbook -i inventory.yml install-nodeexpprter.yml"
                
            }
        }#
        stage('Install Loki') {
            steps {
                
                    sh "ansible-playbook -i inventory.yml install-loki.yml"
                
            }
        }
        stage('Install Grafana') {
            steps {
               
                    sh "ansible-playbook -i inventory.yml install-grafana.yml"
                
            }
        }
        stage('Clean Up') {
            steps {
                sh 'ansible-playbook clean-up.yml -i inventory'
            }
        }
    }
}
