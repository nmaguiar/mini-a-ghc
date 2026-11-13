```yaml
╭ [0] ╭ Target  : nmaguiar/mini-a-ghc:latest (debian forky/sid) 
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
                              ├ Layer            ╭ Digest: sha256:bc2e605a4fd9a7b3d55a324ed8b9c137f7712406dd684
                              │                  │         99f9d2de9db8586127e 
                              │                  ╰ DiffID: sha256:b3c2d2669eb5029eb80aed85985571822fd67f493461d
                              │                            3fbe9a29d008a926368 
                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97054 
                              ├ DataSource       ╭ ID  : govulndb 
                              │                  ├ Name: The Go Vulnerability Database 
                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
                              ├ Fingerprint     : sha256:6bb0da11064c37160fa4832875e3b6648389ec8a8ebcea2dde8b5c
                              │                   c42b4f4760 
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
