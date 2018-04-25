# isso

Config is located at `/var/lib/isso/isso.cfg` and must be provided. Example:

```
[general]
; database location, check permissions, automatically created if not exists
dbpath = /var/lib/isso/comments.db
; your website or blog (not the location of Isso!)
host = http://example.tld/
; you can add multiple hosts for local development
; or SSL connections. There is no wildcard to allow
; any domain.
host =
    http://localhost:1234/
    http://example.tld/
    https://example.tld/
```
