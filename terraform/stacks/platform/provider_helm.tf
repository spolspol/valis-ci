provider "helm" {
 	version	 = "~> 0.9"
    kubernetes {
    	config_path = "~/.kube/config"
    }
}