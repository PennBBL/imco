slist=$(cat /data/joy/BBL/projects/coupling/alff_cbf_size3/n882_size3_beta1.csv)
fslmerge -t /data/joy/BBL/projects/coupling/alff_cbf_size3/n882_size3_beta1.nii.gz $slist

slist=$(cat /data/joy/BBL/projects/coupling/alff_cbf_size4/n882_size4_beta1.csv)
fslmerge -t /data/joy/BBL/projects/coupling/alff_cbf_size4/n882_size4_beta1.nii.gz $slist
