kubectl get namespace nobel

if [ $? -ne 0 ]; then
    echo "Creating namespace nobel"
    kubectl create namespace nobel
else
    echo "Namespace nobel already exists"
fi

for yml in $(ls ./k8s/*.yml); do
    echo "Applying $yml"
    kubectl apply -f $yml -n nobel
done

echo "All resources applied in namespace nobel"