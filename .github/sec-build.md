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
                              ├ VendorIDs                    
                              │                  ────────────
                              │                  GO-2026-6859
                              ├ PkgID           : stdlib@v1.27.3 
                              ├ PkgName         : stdlib 
                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.3 
                              │                  ╰ UID : e374b4c8f0056732 
                              ├ InstalledVersion: v1.27.3 
                              ├ FixedVersion    : 1.26.11, 1.27.4 
                              ├ Status          : fixed 
                              ├ Layer            ╭ Digest: sha256:b4518e2bfaad1c832248203865b4311accf4a69e4dc43
                              │                  │         5b7bb5dc42a635df42d 
                              │                  ╰ DiffID: sha256:6aed44d30654f517bf2dff55e512f6c9ee4c77559b48c
                              │                            d971aad828dd4c181da 
                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97054 
                              ├ DataSource       ╭ ID  : govulndb 
                              │                  ├ Name: The Go Vulnerability Database 
                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
                              ├ Fingerprint     : sha256:bb2cc40f815ff3dd2da42b5e94ae94ec78f447b91ff7ed7ae59cf0
                              │                   a7c10365e0 
                              ├ Title           : net/http: golang: net/http: Denial of Service via race
                              │                   condition when handling oversized HTTP/1 requests 
                              ├ Description     : For HTTP/1 servers, when MaxBytesReader's limit is exceeded,
                              │                   "Connection: close" header is automatically set without
                              │                   synchronization, which might race with another header being
                              │                   set explicitly in the server handler. As a result, an HTTP/1
                              │                   server that utilizes MaxBytesReader or MaxBytesHandler can
                              │                   crash due to runtime panic if its handler reads the request
                              │                   body concurrently with writing the response header. 
                              ├ Severity        : MEDIUM 
                              ├ CweIDs                  
                              │                  ───────
                              │                  CWE-362
                              │                  CWE-820
                              ├ VendorSeverity   ╭ amazon: 2 
                              │                  ├ photon: 2 
                              │                  ╰ redhat: 2 
                              ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/
                              │                           │           A:H 
                              │                           ╰ V3Score : 5.9 
                              ├ References                                                                
                              │                  ─────────────────────────────────────────────────────────
                              │                  https://access.redhat.com/security/cve/CVE-2026-97054    
                              │                  https://go.dev/cl/862185                                 
                              │                  https://go.dev/issue/82563                               
                              │                  https://groups.google.com/g/golang-announce/c/iY8TY0wWgbM
                              │                  https://nvd.nist.gov/vuln/detail/CVE-2026-97054          
                              │                  https://pkg.go.dev/vuln/GO-2026-6859                     
                              │                  https://www.cve.org/CVERecord?id=CVE-2026-97054          
                              ├ PublishedDate   : 2026-11-11T05:19:58.943Z 
                              ╰ LastModifiedDate: 2026-11-16T16:17:56.29Z 
```
