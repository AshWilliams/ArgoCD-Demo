namespaces:
	kubectl create ns aks-argo-demo

apps:
	kubectl apply -f . --namespace=aks-argo-demo

clean:
	kubectl delete ns aks-argo-demo