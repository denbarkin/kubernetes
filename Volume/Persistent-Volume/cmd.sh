$ kubectl get pv
 NAME         CAPACITY   RECLAIMPOLICY   ACCESSMODES   STATUS      CLAIM
mongodb-pv 1Gi Retain RWO,ROX Available

# As expected, the PersistentVolume is shown as Available, 
# because you haven’t yet cre- ated the PersistentVolumeClaim.