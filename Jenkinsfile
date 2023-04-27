pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Deploy with Ansible') {
            steps {
                ansiblePlaybook(
                    playbook: "/path/to/ansible/playbook.yaml",
                    inventory: "${ANSIBLE_HOSTS}",
                    sshKey: "${ANSIBLE_SSH_PRIVATE_KEY_FILE}"
                )
            }
        }
    }
}
