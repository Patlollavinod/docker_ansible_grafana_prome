pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'grafana', url:'https://github.com/Patlollavinod/docker_ansible_grafana_prome.git'           
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
