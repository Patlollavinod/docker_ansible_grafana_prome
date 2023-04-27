pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/ansible_auto']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Patlollavinod/docker_ansible_grafana_prome.git']]])
            }
        }
        stage('Deploy with Ansible') {
            steps {
               sh "ansible-playbook -i inventory playbook"
            }
        }
    }
}
