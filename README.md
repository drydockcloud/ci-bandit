# Scan Python code with https://github.com/PyCQA/bandit

## Usage

```
$ docker run -v $PWD/src:/src -v $PWD/results:/results ci-bandit
```

### Defaults:

- Code in the `/src` directory is scanned recursively
- Report is written in JSON format to `/results/bandit.json`
- Configuration is read from `/src/bandit.yaml`, if present.
- Baseline is read from `/src/bandit-baseline.json`, if present.
- Only high and medium severity issues will be reported.  Non-zero exit status
  if any are found.

## TODO:

- Offer more control over severity levels (?)

