# Scan Python code with https://github.com/PyCQA/bandit

## Example

Assuming scan configuration files are located in `config/`, source to be scanned is in `src/`,
and `results/` exists:

```
$ docker run -v $PWD/config:/src -v $PWD/src:/target -v $PWD/results:/results ci-bandit
```

### Defaults

- Code in the `/target` directory is scanned recursively
- Report is written in text format to `/results/bandit.txt`
- Configuration is read from `/src/bandit.yaml`, if present.
- Baseline is read from `/src/bandit-baseline.json`, if present.
- Only high and medium severity issues will be reported.  Non-zero exit status
  if any are found.

### Arguments

You can specify one of the following commands to alter bandits behavior

- `scan-text` (default) - generates report in text format
- `scan-json` - generates report in json format.  Useful for establishing a baseline.
   Output file will be named `/results/bandit.json`
- `autotest` - same as `scan-text`

## TODO:

- Offer more control over severity levels (?)

