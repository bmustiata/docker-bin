#
# Run an interactive command into a POD.
#

POD_ID=$1
shift
ARGUMENTS=$@

if [[ "$ARGUMENTS" = "" ]]; then
    ARGUMENTS="/bin/bash -il"
fi # [[ $ARGUMENTS = "" ]]

kubectl exec $POD_ID -i -t -- $ARGUMENTS

