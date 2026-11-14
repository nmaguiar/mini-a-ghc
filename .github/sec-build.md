```yaml
╭ [0] ╭ Target  : nmaguiar/mini-a-ghc:build (debian forky/sid) 
│     ├ Class   : os-pkgs 
│     ├ Type    : debian 
│     ╰ Packages 
├ [1] ╭ Target  : Java 
│     ├ Class   : lang-pkgs 
│     ├ Type    : jar 
│     ╰ Packages 
╰ [2] ╭ Target         : usr/bin/pebble 
      ├ Class          : lang-pkgs 
      ├ Type           : gobinary 
      ├ Packages        
      ╰ Vulnerabilities ─ [0] ╭ VulnerabilityID : CVE-2026-97054 
                              ├ VendorIDs        ─ [0]: GO-2026-6859 
                              ├ PkgID           : stdlib@v1.27.3 
                              ├ PkgName         : stdlib 
                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.3 
                              │                  ╰ UID : e374b4c8f0056732 
                              ├ InstalledVersion: v1.27.3 
                              ├ FixedVersion    : 1.26.11, 1.27.4 
                              ├ Status          : fixed 
                              ├ Layer            ╭ Digest: sha256:a35e9a96126b3aeb7338ab1ea1c208773e55e4cf15f23
                              │                  │         f63d90681765cf0e4d3 
                              │                  ╰ DiffID: sha256:ac98d430d782412b94d242ce55e59119b9e27b491d674
                              │                            196fc73137c015b06b0 
                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97054 
                              ├ DataSource       ╭ ID  : govulndb 
                              │                  ├ Name: The Go Vulnerability Database 
                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
                              ├ Fingerprint     : sha256:f629c536711787ee4a59ce5064a485d8073321536afeb8399a30dc
                              │                   2a467a351a 
                              ├ Title           : For HTTP/1 servers, when MaxBytesReader's limit is exceeded,
                              │                   "Connecti ... 
                              ├ Description     : For HTTP/1 servers, when MaxBytesReader's limit is exceeded,
                              │                   "Connection: close" header is automatically set without
                              │                   synchronization, which might race with another header being
                              │                   set explicitly in the server handler. As a result, an HTTP/1
                              │                   server that utilizes MaxBytesReader or MaxBytesHandler can
                              │                   crash due to runtime panic if its handler reads the request
                              │                   body concurrently with writing the response header. 
                              ├ Severity        : UNKNOWN 
                              ├ References       ╭ [0]: https://go.dev/cl/862185 
                              │                  ├ [1]: https://go.dev/issue/82563 
                              │                  ├ [2]: https://groups.google.com/g/golang-announce/c/iY8TY0wWgbM 
                              │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-6859 
                              ├ PublishedDate   : 2026-11-11T05:19:58.943Z 
                              ╰ LastModifiedDate: 2026-11-12T22:09:39.233Z 
```
