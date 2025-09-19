# Trufflehog

Trufflehog is a tool to find credentials in different places on your computer. 
We can use it to scan our repositories for secrets we should not have there.

Use this docker command to search a Git Repo to find secrets

```bash
	docker run -v .:/rut -it ghcr.io/trufflesecurity/trufflehog:latest git --fail file:///rut/
```

More information available on their [Website](https://github.com/trufflesecurity/trufflehog)
