# Scan Python code with https://github.com/PyCQA/bandit

## Example

Assuming scan configuration files are located in `config/`, source to be scanned is in `src/`,
and `results/` exists:

```
$ docker run -v $PWD/config:/src -v $PWD/src:/target -v $PWD/results:/results ci-bandit
```

### Defaults:

- Code in the `/target` directory is scanned recursively
- Report is written in JSON format to `/results/bandit.json`
- Configuration is read from `/src/bandit.yaml`, if present.
- Baseline is read from `/src/bandit-baseline.json`, if present.
- Only high and medium severity issues will be reported.  Non-zero exit status
  if any are found.

## TODO:

- Offer more control over severity levels (?)

