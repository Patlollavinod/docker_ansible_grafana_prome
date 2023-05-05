pipeline {
    agent any
    stages {
        stage('Clean workspace') {
            steps {
                cleanWs()
            }
        }
        stage('checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/jenkins_task']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Patlollavinod/docker_ansible_grafana_prome.git']])
                sh "pwd"
                sh "ls"
            }
        }
        stage(' install-docker') {
            steps {
                    sh "ansible-playbook -i inventory.yml install-docker.yml"
                }
        }
        stage('install-promtail') {
            steps {
                sh "ansible-playbook -i inventory.yml install-promtail.yml "
            }
        }
        stage('promtail installation') {
            steps {
                sh "ansible-playbook -i inventory.yml install-promtail.yml"
            }
        }
        stage('install loki') {
            steps {
                sh "ansible-playbook -i inventory.yml install-loki.yml"
            }
        }
        stage('install node_exporter') {
            steps {
                sh "ansible-playbook -i inventory.yml install-node_exporter.yml"
            }
        }
        stage('install prometheus') {
            steps {
                sh "ansible-playbook -i inventory.yml install-prometheus.yml"
            }
            }
        stage('install grafana') {
            steps {
                sh "ansible-playbook -i inventory.yml install-grafana.yml"
            }
        }
       } 
