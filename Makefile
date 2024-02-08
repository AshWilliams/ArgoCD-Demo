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