pipeline {
  agent {
    node {
      label 'rust-agent'
    }
  }
  stages {
    stage('test') {
      steps {
        sh 'cargo test'
      }
    }

    stage('build') {
      steps {
        sh 'cargo build --release'
      }
    }

    stage('run') {
      steps {
        sh 'echo "Running the application..."'
        sh 'cargo run'
      }
    }
  }
}