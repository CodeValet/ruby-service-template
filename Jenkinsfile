#!/usr/bin/env groovy

pipeline {
    agent { label 'docker' }
    stages {
        stage('Prepare') {
            steps {
                sh 'make depends'
            }
        }
        stage('Build container') {
            steps {
                sh 'make container'
            }
        }
        stage('Test') {
            steps {
                sh 'make check'
            }
        }
    }
}
