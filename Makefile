argo:
	kubectl get all -n argocd

forward:
	kubectl port-forward svc/argocd-server -n argocd 8080:443

namespace:
	kubectl create ns aks-argo-demo

demo:
	kubectl apply -f demo.yaml -n aks-argo-demo

up:
	kubectl get all -n aks-argo-demo

clean:
	kubectl delete ns aks-argo-demo

argologin:
	argocd login 127.0.0.1:8080

argoctl:
	argocd app create mario-demo --repo https://github.com/AshWilliams/ArgoCD-Demo.git --path . --dest-server https://kubernetes.default.svc --dest-namespace aks-argo-demo

argosync:
	argocd app sync mario-demo