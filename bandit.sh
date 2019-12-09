#! /bin/sh

# high and medium severity; write output to /results/bandit.txt

ARGS="-ll"

if [ $# -eq 0 ]; then
    cmd="scan-text"
else
    cmd=$1
fi

case $cmd in
    autotest|scan-text)
        ARGS="${ARGS} -f txt -o /results/bandit.txt"
        ;;
    scan-json)
        ARGS="${ARGS} -f json -o /results/bandit.json"
        ;;
    *)
        echo "Unknown command $cmd" 1>&2
        exit 2
esac

if [ -r /src/bandit.yaml ]; then
    ARGS="${ARGS} -c /src/bandit.yaml"
fi

if [ -r /src/bandit-baseline.json ]; then
    ARGS="${ARGS} -b /src/bandit-baseline.json"
fi

echo bandit ${ARGS} -r /target
exec bandit ${ARGS} -r /target
