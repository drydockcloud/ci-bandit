#! /bin/sh


# high and medium severity; write output to /restuls/bandit.json

ARGS="-ll -o /results/bandit.json"

if [ -r /src/bandit.yaml ]; then
    ARGS="${ARGS} -c /src/bandit.yaml"
fi

if [ -r /src/bandit-baseline.json ]; then
    ARGS="${ARGS} -b /src/bandit-baseline.json"
fi

exec bandit ${ARGS} -r /src
