pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/ansible_auto']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Patlollavinod/docker_ansible_grafana_prome.git']])
            }
        }
        stage('Deploy with Ansible') {
            steps {
                 sh "pwd"
                 sh "ls"
                 sh "ansible-playbook -i inventory playbook.yml"
            }
        }
    }
}
