node{
    git branch: 'main', url: 'https://github.com/AboElmagd6300/simple-java-app.git'
    stage('build'){
        try{
            sh'echo "build stage"'
        
        }
        catch(Exception e){
            sh'echo "Exception found "'
            throw e
        }
    }

    stage('test'){
        if (env.BRANCH_NAME == "feat"){
            sh'echo "test stage "'
        }
        else{
            sh'echo "skip test stage "'
        }
    }
}