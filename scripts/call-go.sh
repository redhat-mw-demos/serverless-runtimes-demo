ROUTE_DOMAIN=apps.cluster-runtimes-8a37.runtimes-8a37.example.opentlc.com

start_time=$SECONDS
curl http://go-serverless.serverless-demo.{$ROUTE_DOMAIN}/api/go
end_time=$SECONDS

elapsed_time_sec=$(( end_time - start_time ))
elapsed_time_min=$(printf '%dh:%dm:%ds\n' $(($elapsed_time_sec/3600)) $(($elapsed_time_sec%3600/60)) $(($elapsed_time_sec%60)))
echo -e "\n ===> $elapsed_time_min seconds elapsed \n"