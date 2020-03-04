#!/bin/bash

APISERVER=`kubectl config view --minify -o jsonpath='{.clusters[0].cluster.server}'`
TOKEN=`kubectl get secret $(kubectl get serviceaccount default -o jsonpath='{.secrets[0].name}') -o jsonpath='{.data.token}' | base64 --decode `
   

apply_cr(){
   curl \
      -H "content-Type: application/json" \
      -H "Authorization: Bearer ${TOKEN}"\
      --insecure \
      -X POST ${APISERVER}/apis/mosaic5g.com/v1alpha1/namespaces/default/mosaic5gs \
      -d '{ "apiVersion"      :     "mosaic5g.com/v1alpha1",
            "kind"            :     "Mosaic5g",
            "metadata"        :  {  "name"      :     "mosaic5g"},
            "spec"            :  {
               "size"                     :  1,
               "cnImage"                  :  "ndhfrock/oaicn:1.0",
               "ranImage"                 :  "ndhfrock/oairan:1.1",
               "flexRANImage"             :  "mosaic5gecosys/flexran:0.1",
               "mcc"                      :  "208",
               "mnc"                      :  "93",
               "eutraBand"                :  "7",
               "downlinkFrequency"        :  "2685000000L",
               "uplinkFrequencyOffset"    :  "-120000000",
               "configurationPathofCN"    :  "/var/snap/oai-cn/current/",
               "configurationPathofRAN"   :  "/var/snap/oai-ran/current/",
               "snapBinaryPath"           :  "/snap/bin/",
               "hssDomainName"            :  "cn",
               "mmeDomainName"            :  "cn",
               "spgwDomainName"           :  "cn",
               "mysqlDomainName"          :  "mysql",
               "dns"                      :  "8.8.8.8",
               "flexRAN"                  :  true,
               "elasticsearch"            :  false, 
               "kibana"                   :  false, 
               "droneStore"               :  false, 
               "rrmkpiStore"              :  false, 
               "flexRANDomainName"        :  "flexran"}}'
}

apply_cr_ltebox(){
   curl \
      -H "content-Type: application/json" \
      -H "Authorization: Bearer ${TOKEN}"\
      --insecure \
      -X POST ${APISERVER}/apis/mosaic5g.com/v1alpha1/namespaces/default/mosaic5gs \
      -d '{ "apiVersion"      :     "mosaic5g.com/v1alpha1",
            "kind"            :     "Mosaic5g",
            "metadata"        :  {  "name"      :     "mosaic5g"},
            "spec"            :  {
               "size"                     :  1,
               "cnImage"                  :  "ndhfrock/ltebox:1.0",
               "ranImage"                 :  "ndhfrock/oairan:1.1",
               "flexRANImage"             :  "mosaic5gecosys/flexran:0.1",
               "mcc"                      :  "208",
               "mnc"                      :  "93",
               "eutraBand"                :  "7",
               "downlinkFrequency"        :  "2685000000L",
               "uplinkFrequencyOffset"    :  "-120000000",
               "configurationPathofCN"    :  "/opt/ltebox/etc/",
               "configurationPathofRAN"   :  "/var/snap/oai-ran/current/",
               "snapBinaryPath"           :  "/snap/bin/",
               "hssDomainName"            :  "cn",
               "mmeDomainName"            :  "cn",
               "spgwDomainName"           :  "cn",
               "mysqlDomainName"          :  "mysql",
               "dns"                      :  "8.8.8.8",
               "flexRAN"                  :  true,
               "elasticsearch"            :  false, 
               "kibana"                   :  false, 
               "droneStore"               :  false, 
               "rrmkpiStore"              :  false, 
               "flexRANDomainName"        :  "flexran"}}'
}

apply_cr_slicing(){
   curl \
      -H "content-Type: application/json" \
      -H "Authorization: Bearer ${TOKEN}"\
      --insecure \
      -X POST ${APISERVER}/apis/mosaic5g.com/v1alpha1/namespaces/default/mosaic5gs \
      -d '{ "apiVersion"      :     "mosaic5g.com/v1alpha1",
            "kind"            :     "Mosaic5g",
            "metadata"        :  {  "name"      :     "mosaic5g"},
            "spec"            :  {
               "size"                     :  1,
               "cnImage"                  :	"ndhfrock/oaicn:1.0",
               "ranImage"                 :	"ndhfrock/oairanslicing:1.0",
               "flexRANImage"             :	"mosaic5gecosys/flexran:0.1",
               "mcc"                      :	"208",
               "mnc"                      :	"93",
               "eutraBand"                :	"7",
               "downlinkFrequency"        :	"2685000000L",
               "uplinkFrequencyOffset"    :	"-120000000",
               "configurationPathofCN"    :	"/var/snap/oai-cn/current/",
               "configurationPathofRAN"   :	"/LTE_Mac_scheduler_with_network_slicing/targets/PROJECTS/GENERIC-LTE-EPC/CONF/",
               "snapBinaryPath"           :	"/snap/bin/",
               "hssDomainName"            :	"cn",
               "mmeDomainName"            :	"cn",
               "spgwDomainName"           :	"cn",
               "mysqlDomainName"          :	"mysql",
               "dns"                      :	"8.8.8.8",
               "flexRAN"                  :	true,
               "elasticsearch"            :	false, 
               "kibana"                   :	false, 
               "droneStore"               :	false, 
               "rrmkpiStore"              :	false, 
               "flexRANDomainName"        :	"flexran"}}'
}

apply_cr_nbiot(){
   curl \
      -H "content-Type: application/json" \
      -H "Authorization: Bearer ${TOKEN}"\
      --insecure \
      -X POST ${APISERVER}/apis/mosaic5g.com/v1alpha1/namespaces/default/mosaic5gs \
      -d '{ "apiVersion"      :     "mosaic5g.com/v1alpha1",
            "kind"            :     "Mosaic5g",
            "metadata"        :  {  "name"      :     "mosaic5g"},
            "spec"            :  {
               "size"                     :  1,
               "cnImage"                  :	"ndhfrock/ltebox:1.0",
               "ranImage"                 :	"ndhfrock/oainbiot:1.0",
               "flexRANImage"             :	"mosaic5gecosys/flexran:0.1",
               "mcc"                      :	"208",
               "mnc"                      :	"93",
               "eutraBand"                :	"28",
               "downlinkFrequency"        :	"780000000L",
               "uplinkFrequencyOffset"    :	"-55000000",
               "configurationPathofCN"    :	"/var/snap/oai-cn/current/",
               "configurationPathofRAN"   :	"/",
               "snapBinaryPath"           :	"/snap/bin/",
               "hssDomainName"            :	"cn",
               "mmeDomainName"            :	"cn",
               "spgwDomainName"           :	"cn",
               "mysqlDomainName"          :	"mysql",
               "dns"                      :	"8.8.8.8",
               "flexRAN"                  :	false,
               "elasticsearch"            :	false, 
               "kibana"                   :	false, 
               "droneStore"               :	false, 
               "rrmkpiStore"              :	false, 
               "flexRANDomainName"        :	"flexran"}}'
}

delete_cr(){
   curl \
      -H "content-Type: application/json" \
      -H "Authorization: Bearer ${TOKEN}"\
      --insecure \
      -X DELETE ${APISERVER}/apis/mosaic5g.com/v1alpha1/namespaces/default/mosaic5gs/mosaic5g
}

patch_ranslicing(){
   curl \
      -H "content-Type: application/json-patch+json" \
      -H "Authorization: Bearer ${TOKEN}"\
      --insecure \
      -X PATCH ${APISERVER}/apis/mosaic5g.com/v1alpha1/namespaces/default/mosaic5gs/mosaic5g \
      -d '[{   "op"        :  "replace",
               "path"      :  "/spec/ranImage",
               "value"     :  "ndhfrock/oairanslicing:1.0"}
         ,{    "op"        :  "replace",
               "path"      :  "/spec/configurationPathofRAN",
               "value"     :  "/LTE_Mac_scheduler_with_network_slicing/targets/PROJECTS/GENERIC-LTE-EPC/CONF/"}]'
}

patch_ransnap(){
   curl \
      -H "content-Type: application/json-patch+json" \
      -H "Authorization: Bearer ${TOKEN}"\
      --insecure \
      -X PATCH ${APISERVER}/apis/mosaic5g.com/v1alpha1/namespaces/default/mosaic5gs/mosaic5g \
      -d '[{   "op"        :  "replace",
               "path"      :  "/spec/ranImage",
               "value"     :  "ndhfrock/oairan:1.1"}
         ,{    "op"        :  "replace",
               "path"      :  "/spec/configurationPathofRAN",
               "value"     :  "/var/snap/oai-ran/current/"}]'
}

patch_cnsnap(){
   curl \
      -H "content-Type: application/json-patch+json" \
      -H "Authorization: Bearer ${TOKEN}"\
      --insecure \
      -X PATCH ${APISERVER}/apis/mosaic5g.com/v1alpha1/namespaces/default/mosaic5gs/mosaic5g \
      -d '[{   "op"        :  "replace",
               "path"      :  "/spec/cnImage",
               "value"     :  "ndhfrock/oaicn:1.0"}
         ,{    "op"        :  "replace",
               "path"      :  "/spec/configurationPathofCN",
               "value"     :  "/var/snap/oai-cn/current/"}]'
}

patch_cnltebox(){
   curl \
      -H "content-Type: application/json-patch+json" \
      -H "Authorization: Bearer ${TOKEN}"\
      --insecure \
      -X PATCH ${APISERVER}/apis/mosaic5g.com/v1alpha1/namespaces/default/mosaic5gs/mosaic5g \
      -d '[{   "op"        :  "replace",
               "path"      :  "/spec/cnImage",
               "value"     :  "ndhfrock/ltebox:1.0"}
         ,{    "op"        :  "replace",
               "path"      :  "/spec/configurationPathofCN",
               "value"     :  "/opt/ltebox/etc/"}]'
}

patch_component(){
   curl \
      -H "content-Type: application/json-patch+json" \
      -H "Authorization: Bearer ${TOKEN}"\
      --insecure \
      -X PATCH ${APISERVER}/apis/mosaic5g.com/v1alpha1/namespaces/default/mosaic5gs/mosaic5g \
      -d '[{   "op"        :  "replace",
               "path"      :  "/spec/flexRAN",
               "value"     :  false}
         ,{    "op"        :  "replace",
               "path"      :  "/spec/elasticsearch",
               "value"     :  false}
         ,{    "op"        :  "replace",
               "path"      :  "/spec/kibana",
               "value"     :  false}
         ,{    "op"        :  "replace",
               "path"      :  "/spec/droneStore",
               "value"     :  false}
         ,{    "op"        :  "replace",
               "path"      :  "/spec/rrmkpiStore",
               "value"     :  false}]'
}

init(){
   kubectl apply -f defaultRole.yaml
}

main(){
   echo "---api.sh start---"
   case ${1} in
      init)
         init
      ;;
      apply_cr)
         apply_cr
      ;;
      apply_cr_ltebox)
         apply_cr_ltebox
      ;;
      apply_cr_slicing)
         apply_cr_slicing
      ;;
      delete_cr)
         delete_cr
      ;;
      patch_ranslicing)
         patch_ranslicing
      ;;
      patch_ransnap)
         patch_ransnap
      ;;
      patch_cnsnap)
         patch_cnsnap
      ;;
      patch_cnltebox)
         patch_cnltebox
      ;;
      patch_component)
         patch_component
      ;;
      *)
         echo "Commands: init apply_cr delete_cr patch_11 patch_12"
         echo "Bring up Mosaic 5G Custom Resource"
         echo "[Important] Always use api.sh init first to use this"
         echo ""
         echo "Usage:"
         echo "      ================  APPLY TO START DEPLOYING PODS  ================"
         echo "      api.sh init - Apply defaultRole to kubernetes cluster"
         echo "      api.sh apply_cr - Add custom resource deployment (uses snap oai-ran)"
         echo "      api.sh apply_cr_slicing - Add custom resource deployment (uses samuel's oai-ran)"
         echo "      api.sh delete_cr - Delete all Custom Resource Deployment"
         echo "      ============  PATCH TO UPDATE COMPONENT AFTER APPLYING  ============"
         echo "      api.sh patch_ransnap - Change to OAIRAN from snap store"
         echo "      api.sh patch_ranslicing - Change to OAIRAN that Samuel's created"
         echo "      api.sh patch_cnsnap - Change to OAICN from snap store"
         echo "      api.sh patch_cnltebox - Change to LTEBOX Core Network"
         echo "      api.sh patch_component - Change to deploy or undeploy supporting component"
      ;;
   esac
   
   echo "---api.sh end---"
}

main ${1}
