```yaml
╭ [0] ╭ Target  : nmaguiar/mini-a-ghc:build (debian forky/sid) 
│     ├ Class   : os-pkgs 
│     ├ Type    : debian 
│     ╰ Packages 
├ [1] ╭ Target         : Java 
│     ├ Class          : lang-pkgs 
│     ├ Type           : jar 
│     ├ Packages        
│     ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-89407 
│                       │     ├ VendorIDs        ─ [0]: GHSA-p6pp-m3f8-5c89 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-core 
│                       │     ├ PkgPath         : openaf/ghcopilot/jackson-core-2.22.2.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-core@2.22.2 
│                       │     │                  ╰ UID : c8dddb2c3bfe87b9 
│                       │     ├ InstalledVersion: 2.22.2 
│                       │     ├ FixedVersion    : 2.18.11, 2.21.7, 2.22.3 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f53
│                       │     │                  │         f1fda9b3f3e35eae32b 
│                       │     │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfeab
│                       │     │                            4e02867b9f5fbfcf8fd 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89407 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:fc05302ffcd2c04650f6e8d228a2070a26f9f3617166fd0dfdb9e8
│                       │     │                   21f8cdb6ac 
│                       │     ├ Title           : com.fasterxml.jackson/jackson-core:
│                       │     │                   tools.jackson.core/jackson-core: Jackson-core: Denial of
│                       │     │                   Service via regular expression backtracking 
│                       │     ├ Description     : NumberInput.looksLikeValidNumber() in FasterXML jackson-core
│                       │     │                   pre-validates "stringified numbers" with two regular
│                       │     │                   expressions: PATTERN_FLOAT
│                       │     │                   ([+-]?[0-9]*[\.]?[0-9]+([eE][+-]?[0-9]+)?), present since
│                       │     │                   2.17.0, and PATTERN_FLOAT_TRAILING_DOT, added in 2.17.2.
│                       │     │                   PATTERN_FLOAT places adjacent quantifiers over the same
│                       │     │                   character class -- an optional [0-9]* run, an optional dot,
│                       │     │                   then a required [0-9]+ run -- so input that ultimately fails
│                       │     │                   to match forces Java's backtracking engine to retry every
│                       │     │                   possible split point of the digit run. 
│                       │     │                   
│                       │     │                   Matching cost therefore grows with the square of the input
│                       │     │                   length. 
│                       │     │                   An attacker who can supply JSON that an application
│                       │     │                   deserializes into a numeric target type reaches this method
│                       │     │                   through jackson-databind's default String-to-number coercion
│                       │     │                   (StdDeserializer and NumberDeserializers for BigDecimal,
│                       │     │                   BigInteger, Double and Float). 
│                       │     │                   Because StreamReadConstraints.maxStringLength defaults to
│                       │     │                   20,000,000 characters, no constraint bounds the input before
│                       │     │                   it reaches the regex. 
│                       │     │                   Testing by the reporter confirmed O(n^2) growth across five
│                       │     │                   consecutive input-size doublings, with a single
│                       │     │                   160,000-character string consuming roughly 74 seconds in one
│                       │     │                   call; a small number of concurrent requests of ordinary body
│                       │     │                   size can therefore exhaust a server's request-handling thread
│                       │     │                    pool. 
│                       │     │                   The affected method does not exist before 2.17.0, so 2.16.x
│                       │     │                   and earlier releases are not affected. 
│                       │     │                   The fix replaces both regular expressions with a hand-rolled
│                       │     │                   single-pass scan. 
│                       │     ├ Severity        : HIGH 
│                       │     ├ CweIDs           ╭ [0]: CWE-400 
│                       │     │                  ╰ [1]: CWE-1333 
│                       │     ├ VendorSeverity   ╭ amazon: 3 
│                       │     │                  ├ ghsa  : 3 
│                       │     │                  ╰ redhat: 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                  │        │           A:H 
│                       │     │                  │        ╰ V3Score : 7.5 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 5.9 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-89407 
│                       │     │                  ├ [1] : https://advisory.echohq.com/cve/CVE-2026-89407 
│                       │     │                  ├ [2] : https://getsafety.com/vulnerabilities/SFTY-20260922-89
│                       │     │                  │       449/CVE-2026-89407 
│                       │     │                  ├ [3] : https://github.com/FasterXML/jackson-core 
│                       │     │                  ├ [4] : https://github.com/FasterXML/jackson-core/commit/731e7
│                       │     │                  │       94f62623aa0d86ced52490166be903fbb1d 
│                       │     │                  ├ [5] : https://github.com/FasterXML/jackson-core/commit/e7acd
│                       │     │                  │       64cc99bd346704423dc2bfea1ab0a08ddff 
│                       │     │                  ├ [6] : https://github.com/FasterXML/jackson-core/issues/1649 
│                       │     │                  ├ [7] : https://github.com/FasterXML/jackson-core/pull/1650 
│                       │     │                  ├ [8] : https://github.com/FasterXML/jackson-core/pull/1701 
│                       │     │                  ├ [9] : https://github.com/FasterXML/jackson-core/security/adv
│                       │     │                  │       isories/GHSA-p6pp-m3f8-5c89 
│                       │     │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-89407 
│                       │     │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2026-89407 
│                       │     ├ PublishedDate   : 2026-09-22T15:17:21.053Z 
│                       │     ╰ LastModifiedDate: 2026-09-22T20:00:03.713Z 
│                       ├ [1] ╭ VulnerabilityID : CVE-2026-89425 
│                       │     ├ VendorIDs        ─ [0]: GHSA-7hhh-6rmp-j9qf 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-core 
│                       │     ├ PkgPath         : openaf/ghcopilot/jackson-core-2.22.2.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-core@2.22.2 
│                       │     │                  ╰ UID : c8dddb2c3bfe87b9 
│                       │     ├ InstalledVersion: 2.22.2 
│                       │     ├ FixedVersion    : 2.21.7, 2.22.3, 2.18.11 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f53
│                       │     │                  │         f1fda9b3f3e35eae32b 
│                       │     │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfeab
│                       │     │                            4e02867b9f5fbfcf8fd 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89425 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:e75527112ac36a2602e2d4f05b1789113d2206daec2acece329eff
│                       │     │                   71df67236f 
│                       │     ├ Title           : com.fasterxml.jackson.core/jackson-core: Jackson-core: Denial
│                       │     │                    of Service via unbounded StringBuilder growth during
│                       │     │                   malformed token processing 
│                       │     ├ Description     : UTF8DataInputJsonParser._reportInvalidToken() in FasterXML
│                       │     │                   jackson-core builds the offending-token text for its error
│                       │     │                   message by appending Java identifier characters to a
│                       │     │                   StringBuilder in a loop that has no upper bound. Unlike the
│                       │     │                   three sibling parser implementations, including
│                       │     │                   UTF8StreamJsonParser, it never consults
│                       │     │                   ErrorReportConfiguration.getMaxErrorTokenLength() (default
│                       │     │                   256). A malformed token supplied to a parser created through
│                       │     │                   JsonFactory.createParser(DataInput) is therefore accumulated
│                       │     │                   in full. No StreamReadConstraints setting mitigates this:
│                       │     │                   maxDocumentLength cannot be applied to DataInput sources at
│                       │     │                   all, and maxStringLength does not cover this path because the
│                       │     │                    accumulation bypasses ReadConstrainedTextBuffer. The
│                       │     │                   reporter measured a 20,000,109-character exception message
│                       │     │                   from a 20-million-character malformed token on the DataInput
│                       │     │                   path, against 367 characters for identical input on the
│                       │     │                   InputStream path. Scaling the payload drives the
│                       │     │                   StringBuilder, which also incurs byte-to-char expansion and
│                       │     │                   internal array doubling, to many times the raw payload size
│                       │     │                   and can trigger OutOfMemoryError for the whole JVM.
│                       │     │                   UTF8DataInputJsonParser was introduced in 2.8.0 together with
│                       │     │                    createParser(DataInput); releases before 2.8.0 do not
│                       │     │                   contain the affected class. 
│                       │     ├ Severity        : HIGH 
│                       │     ├ CweIDs           ╭ [0]: CWE-400 
│                       │     │                  ╰ [1]: CWE-770 
│                       │     ├ VendorSeverity   ╭ amazon: 3 
│                       │     │                  ├ ghsa  : 3 
│                       │     │                  ╰ redhat: 3 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                  │        │           A:H 
│                       │     │                  │        ╰ V3Score : 7.5 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 7.5 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-89425 
│                       │     │                  ├ [1]: https://advisory.echohq.com/cve/CVE-2026-89425 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-core 
│                       │     │                  ├ [3]: https://github.com/FasterXML/jackson-core/commit/211cf2
│                       │     │                  │      c5d91abbec38067f37efc1363cd4e88ee3 
│                       │     │                  ├ [4]: https://github.com/FasterXML/jackson-core/pull/1698 
│                       │     │                  ├ [5]: https://github.com/FasterXML/jackson-core/releases/tag/
│                       │     │                  │      jackson-core-2.18.11 
│                       │     │                  ├ [6]: https://github.com/FasterXML/jackson-core/releases/tag/
│                       │     │                  │      jackson-core-3.2.3 
│                       │     │                  ├ [7]: https://github.com/FasterXML/jackson-core/security/advi
│                       │     │                  │      sories/GHSA-7hhh-6rmp-j9qf 
│                       │     │                  ├ [8]: https://nvd.nist.gov/vuln/detail/CVE-2026-89425 
│                       │     │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-89425 
│                       │     ├ PublishedDate   : 2026-09-23T03:17:04.357Z 
│                       │     ╰ LastModifiedDate: 2026-09-24T20:43:32.537Z 
│                       ├ [2] ╭ VulnerabilityID : CVE-2026-91776 
│                       │     ├ VendorIDs        ─ [0]: GHSA-wv8q-qhhj-9h54 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/ghcopilot/jackson-databind-2.22.2.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.22.2 
│                       │     │                  ╰ UID : b09f79ee50ae8e1d 
│                       │     ├ InstalledVersion: 2.22.2 
│                       │     ├ FixedVersion    : 2.18.11, 2.21.7, 2.22.3 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f53
│                       │     │                  │         f1fda9b3f3e35eae32b 
│                       │     │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfeab
│                       │     │                            4e02867b9f5fbfcf8fd 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-91776 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:10e2bac2cb9848fd1153be8f1fd2cd5a93e57e1cbda88d9bd7d166
│                       │     │                   b292483300 
│                       │     ├ Title           : jackson-databind: com.fasterxml.jackson/jackson-core:
│                       │     │                   jackson-databind: Denial of Service via unbounded cache
│                       │     │                   growth in TypeDeserializerBase 
│                       │     ├ Description     : TypeDeserializerBase._findDeserializer() in FasterXML
│                       │     │                   jackson-databind caches the resolved deserializer under the
│                       │     │                   raw, attacker-supplied type ID. When name-based polymorphism
│                       │     │                   is configured with a fallback, for example @JsonTypeInfo(use
│                       │     │                   = Id.NAME, defaultImpl = ...), every distinct unrecognized
│                       │     │                   type ID resolves to the same fallback deserializer but is
│                       │     │                   retained as its own key in the _deserializers map. That map
│                       │     │                   has no configurable bound and lives for the lifetime of the
│                       │     │                   type deserializer, so an attacker who can repeatedly supply
│                       │     │                   fresh unknown type IDs causes monotonic memory retention
│                       │     │                   across requests. The reporter observed 10,000 retained
│                       │     │                   entries from 10,000 distinct unknown IDs, against a single
│                       │     │                   entry for a control that repeated one unknown ID the same
│                       │     │                   number of times, isolating attacker-controlled key
│                       │     │                   cardinality from request volume. Exploitation requires an
│                       │     │                   application that enables name-based polymorphism with a
│                       │     │                   defaultImpl or equivalent fallback, accepts
│                       │     │                   attacker-influenced type IDs, and reuses a long-lived
│                       │     │                   ObjectMapper across requests. The fix stops caching fallback
│                       │     │                   resolutions for unrecognized IDs and bounds both the number
│                       │     │                   of cached entries and the length of a cacheable type ID. 
│                       │     ├ Severity        : HIGH 
│                       │     ├ CweIDs           ─ [0]: CWE-400 
│                       │     ├ VendorSeverity   ╭ ghsa  : 3 
│                       │     │                  ├ redhat: 3 
│                       │     │                  ╰ ubuntu: 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                  │        │           A:H 
│                       │     │                  │        ╰ V3Score : 7.5 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 7.5 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-91776 
│                       │     │                  ├ [1] : https://advisory.echohq.com/cve/CVE-2026-91776 
│                       │     │                  ├ [2] : https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [3] : https://github.com/FasterXML/jackson-databind/commit/2
│                       │     │                  │       870d1d6dc1b7e1c07ee11dd5b04ab71cddbb577 
│                       │     │                  ├ [4] : https://github.com/FasterXML/jackson-databind/issues/6
│                       │     │                  │       203 
│                       │     │                  ├ [5] : https://github.com/FasterXML/jackson-databind/pull/6203 
│                       │     │                  ├ [6] : https://github.com/FasterXML/jackson-databind/releases
│                       │     │                  │       /tag/jackson-databind-2.18.11 
│                       │     │                  ├ [7] : https://github.com/FasterXML/jackson-databind/releases
│                       │     │                  │       /tag/jackson-databind-2.21.7 
│                       │     │                  ├ [8] : https://github.com/FasterXML/jackson-databind/releases
│                       │     │                  │       /tag/jackson-databind-2.22.3 
│                       │     │                  ├ [9] : https://github.com/FasterXML/jackson-databind/releases
│                       │     │                  │       /tag/jackson-databind-3.1.7 
│                       │     │                  ├ [10]: https://github.com/FasterXML/jackson-databind/releases
│                       │     │                  │       /tag/jackson-databind-3.2.3 
│                       │     │                  ├ [11]: https://github.com/FasterXML/jackson-databind/security
│                       │     │                  │       /advisories/GHSA-wv8q-qhhj-9h54 
│                       │     │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-91776 
│                       │     │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2026-91776 
│                       │     ├ PublishedDate   : 2026-09-23T03:17:04.62Z 
│                       │     ╰ LastModifiedDate: 2026-09-24T20:43:32.537Z 
│                       ╰ [3] ╭ VulnerabilityID : CVE-2026-91777 
│                             ├ VendorIDs        ─ [0]: GHSA-cxp5-3px4-pw24 
│                             ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                             ├ PkgPath         : openaf/ghcopilot/jackson-databind-2.22.2.jar 
│                             ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                             │                  │       2.22.2 
│                             │                  ╰ UID : b09f79ee50ae8e1d 
│                             ├ InstalledVersion: 2.22.2 
│                             ├ FixedVersion    : 2.21.7, 2.18.11, 2.22.3 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f53
│                             │                  │         f1fda9b3f3e35eae32b 
│                             │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfeab
│                             │                            4e02867b9f5fbfcf8fd 
│                             ├ SeveritySource  : ghsa 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-91777 
│                             ├ DataSource       ╭ ID  : ghsa 
│                             │                  ├ Name: GitHub Security Advisory Maven 
│                             │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                             │                          osystem%3Amaven 
│                             ├ Fingerprint     : sha256:0d6ccab2769b32f2b2b3c4e282e1fda4952c7903d9df377a40c8b8
│                             │                   e7c02b6b84 
│                             ├ Title           : com.fasterxml.jackson.core/jackson-databind:
│                             │                   tools.jackson.core:jackson-databind: Jackson-databind: Denial
│                             │                    of Service via quadratic forward-reference completion 
│                             ├ Description     : Forward-reference completion for @JsonIdentityInfo object IDs
│                             │                    in FasterXML jackson-databind performs a linear scan of the
│                             │                   pending-reference accumulator for every resolved ID. The
│                             │                   affected paths are
│                             │                   CollectionDeserializer.CollectionReferringAccumulator.resolve
│                             │                   ForwardReference() and the equivalent implementation in
│                             │                   MapDeserializer. When a document first creates N unresolved
│                             │                   object-ID references in an identity-enabled collection or map
│                             │                    and then defines those same IDs in reverse order, completion
│                             │                    performs on the order of N * (N + 1) / 2 identity
│                             │                   comparisons, so a shallow document whose size grows linearly
│                             │                   causes quadratic CPU work during deserialization. The
│                             │                   reporter instrumented equals() calls on the ID class and
│                             │                   measured exactly 2,003,000 comparisons at N = 2,000, against
│                             │                   zero comparisons in the pending-reference lookup path for an
│                             │                   equally sized control in which every reference was already
│                             │                   resolved. The input requires no deep nesting and no
│                             │                   syntactically unusual JSON. Exploitation requires an
│                             │                   application that deserializes attacker-influenced JSON into
│                             │                   an identity-enabled collection or map. The fix replaces the
│                             │                   repeated linear lookup with a keyed pending-reference
│                             │                   structure. 
│                             ├ Severity        : HIGH 
│                             ├ CweIDs           ─ [0]: CWE-400 
│                             ├ VendorSeverity   ╭ ghsa  : 3 
│                             │                  ├ redhat: 3 
│                             │                  ╰ ubuntu: 2 
│                             ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                             │                  │        │           A:H 
│                             │                  │        ╰ V3Score : 7.5 
│                             │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                             │                           │           A:H 
│                             │                           ╰ V3Score : 7.5 
│                             ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-91777 
│                             │                  ├ [1] : https://advisory.echohq.com/cve/CVE-2026-91777 
│                             │                  ├ [2] : https://github.com/FasterXML/jackson-databind 
│                             │                  ├ [3] : https://github.com/FasterXML/jackson-databind/commit/3
│                             │                  │       7ad9b81712cbb9fb62c2d2c1813593252a24b67 
│                             │                  ├ [4] : https://github.com/FasterXML/jackson-databind/issues/6
│                             │                  │       204 
│                             │                  ├ [5] : https://github.com/FasterXML/jackson-databind/pull/6204 
│                             │                  ├ [6] : https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-2.18.11 
│                             │                  ├ [7] : https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-2.21.7 
│                             │                  ├ [8] : https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-2.22.3 
│                             │                  ├ [9] : https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-3.1.7 
│                             │                  ├ [10]: https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-3.2.3 
│                             │                  ├ [11]: https://github.com/FasterXML/jackson-databind/security
│                             │                  │       /advisories/GHSA-cxp5-3px4-pw24 
│                             │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-91777 
│                             │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2026-91777 
│                             ├ PublishedDate   : 2026-09-23T03:17:04.783Z 
│                             ╰ LastModifiedDate: 2026-09-24T20:43:32.537Z 
╰ [2] ╭ Target         : usr/bin/pebble 
      ├ Class          : lang-pkgs 
      ├ Type           : gobinary 
      ├ Packages        
      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-78667 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6609 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f5
                        │      │                  │         3f1fda9b3f3e35eae32b 
                        │      │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfea
                        │      │                            b4e02867b9f5fbfcf8fd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78667 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:8fa41524f26a1b8de26b49007138d99379832db96fb55a3e435eb
                        │      │                   bdda6114deb 
                        │      ├ Title           : net/http: golang: golang: Denial of Service via crafted HTTP
                        │      │                    Range headers 
                        │      ├ Description     : When parsing a Range header containing a large number of
                        │      │                   small ranges, FileServer(FS), ServeContent, and
                        │      │                   ServeFile(FS) can consume an excessive amount of CPU. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-770 
                        │      ├ VendorSeverity   ╭ bitnami: 3 
                        │      │                  ├ redhat : 3 
                        │      │                  ╰ ubuntu : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-78667 
                        │      │                  ├ [1]: https://github.com/golang/go/issues/81858 
                        │      │                  ├ [2]: https://go.dev/cl/847309 
                        │      │                  ├ [3]: https://go.dev/issue/81858 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-78667 
                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2026-6609 
                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-78667 
                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/10/08/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.88Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.69Z 
                        ├ [1]  ╭ VulnerabilityID : CVE-2026-78669 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6611 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f5
                        │      │                  │         3f1fda9b3f3e35eae32b 
                        │      │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfea
                        │      │                            b4e02867b9f5fbfcf8fd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78669 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:46752468f04599643acd3b8ce2731ddaac3dcfb11f60504743702
                        │      │                   16d512372b3 
                        │      ├ Title           : net/http: net/http/internal/http2: golang.org/x/net/http2:
                        │      │                   net/http: Denial of Service via excessive HTTP/2 SETTINGS
                        │      │                   frames 
                        │      ├ Description     : A malicious HTTP/2 peer can cause excessive CPU consumption
                        │      │                   in the client or server by opening a large number of streams
                        │      │                    and then sending many small SETTINGS frames containing
                        │      │                   SETTINGS_INITIAL_WINDOW_SIZE values. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-405 
                        │      ├ VendorSeverity   ╭ azure  : 3 
                        │      │                  ├ bitnami: 3 
                        │      │                  ├ redhat : 3 
                        │      │                  ╰ ubuntu : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-78669 
                        │      │                  ├ [1] : https://github.com/golang/go/issues/81742 
                        │      │                  ├ [2] : https://go.dev/cl/847186 
                        │      │                  ├ [3] : https://go.dev/cl/847308 
                        │      │                  ├ [4] : https://go.dev/issue/81742 
                        │      │                  ├ [5] : https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/ZPwCyRU
                        │      │                  │       uGBs 
                        │      │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2026-78669 
                        │      │                  ├ [8] : https://pkg.go.dev/vuln/GO-2026-6611 
                        │      │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2026-78669 
                        │      │                  ╰ [10]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:04.01Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.857Z 
                        ├ [2]  ╭ VulnerabilityID : CVE-2026-97031 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6607 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f5
                        │      │                  │         3f1fda9b3f3e35eae32b 
                        │      │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfea
                        │      │                            b4e02867b9f5fbfcf8fd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97031 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:1d354b60525b3f298fe18815596781ad9dc7090eea7fc87e944ec
                        │      │                   6b1b87229ab 
                        │      ├ Title           : crypto/tls: golang: crypto/tls: Denial of Service via
                        │      │                   multiple ECH outer extension references 
                        │      ├ Description     : Multiple ECH outer extension references are not permitted
                        │      │                   under RFC 9849; previously, a client could send a
                        │      │                   well-crafted packet that could trigger memory exhaustion in
                        │      │                   the server process by specifying multiple references. We now
                        │      │                    reject these as malformed and curb the memory amplification
                        │      │                    vector as a result. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-405 
                        │      ├ VendorSeverity   ╭ bitnami: 3 
                        │      │                  ╰ redhat : 3 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-97031 
                        │      │                  ├ [1]: https://go.dev/cl/847312 
                        │      │                  ├ [2]: https://go.dev/issue/81855 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-97031 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-6607 
                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-97031 
                        │      ├ PublishedDate   : 2026-10-08T23:17:06.037Z 
                        │      ╰ LastModifiedDate: 2026-10-09T16:35:35.9Z 
                        ├ [3]  ╭ VulnerabilityID : CVE-2026-56866 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6605 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f5
                        │      │                  │         3f1fda9b3f3e35eae32b 
                        │      │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfea
                        │      │                            b4e02867b9f5fbfcf8fd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56866 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:e820cf92722188130b99f7001a4fb424b17c9ce01ed4b4d85eb06
                        │      │                   66bc82c288c 
                        │      ├ Title           : net/http: golang: golang: Cross-user response poisoning via
                        │      │                   desynchronized HTTP CONNECT connections 
                        │      ├ Description     : When http.Transport sends an HTTP/1 CONNECT request with a
                        │      │                   non-empty Request.Body, it writes the body directly to the
                        │      │                   connection without framing after the request headers. If the
                        │      │                    server rejects the CONNECT request with a non-2xx
                        │      │                   keep-alive response, Transport returns the connection to the
                        │      │                    idle pool. Because CONNECT requests do not have a request
                        │      │                   body, the server may interpret the trailing body bytes as a
                        │      │                   subsequent pipelined HTTP/1.1 request on the connection,
                        │      │                   leaving the pooled connection desynchronized and causing the
                        │      │                    next caller that reuses it to read the response to the
                        │      │                   injected request. In reverse proxies (including
                        │      │                   httputil.ReverseProxy) that forward CONNECT requests through
                        │      │                    a shared Transport, this can lead to cross-user response
                        │      │                   poisoning. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-444 
                        │      ├ VendorSeverity   ╭ bitnami: 3 
                        │      │                  ├ redhat : 2 
                        │      │                  ╰ ubuntu : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
                        │      │                  │         │           N/A:N 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
                        │      │                            │           L/A:N 
                        │      │                            ╰ V3Score : 6.5 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56866 
                        │      │                  ├ [1]: https://github.com/golang/go/issues/81740 
                        │      │                  ├ [2]: https://go.dev/cl/847306 
                        │      │                  ├ [3]: https://go.dev/issue/81740 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-56866 
                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2026-6605 
                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-56866 
                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/10/08/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:01.62Z 
                        │      ╰ LastModifiedDate: 2026-10-09T16:35:35.9Z 
                        ├ [4]  ╭ VulnerabilityID : CVE-2026-78659 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6603 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f5
                        │      │                  │         3f1fda9b3f3e35eae32b 
                        │      │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfea
                        │      │                            b4e02867b9f5fbfcf8fd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78659 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:10bca7415222f8575b31321da768e899187fd24e974bee91dfc62
                        │      │                   3df1532d164 
                        │      ├ Title           : When "Trailer" headers are sent by a client, the HTTP server
                        │      │                    internall ... 
                        │      ├ Description     : When "Trailer" headers are sent by a client, the HTTP server
                        │      │                    internally uses the header values to populate the
                        │      │                   Request.Trailer map passed to the server handler. Because
                        │      │                   Request.Trailer is a map, each entry incurs memory overhead.
                        │      │                    For HTTP/2 servers, a malicious client can exploit this by
                        │      │                   sending a "Trailer" header that declares a large number of
                        │      │                   fields, causing the server to allocate a disproportionate
                        │      │                   amount of memory while bypassing Server.MaxHeaderValueCount
                        │      │                   and Server.MaxHeaderBytes limits. This exploit is not
                        │      │                   applicable for HTTP/1 servers, which do not support
                        │      │                   multiplexing a large number of requests over one TCP
                        │      │                   connection, and whose Server.MaxHeaderBytes are calculated
                        │      │                   differently. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-405 
                        │      ├ VendorSeverity   ╭ azure  : 2 
                        │      │                  ├ bitnami: 3 
                        │      │                  ╰ ubuntu : 2 
                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0]: https://github.com/golang/go/issues/81857 
                        │      │                  ├ [1]: https://go.dev/cl/847185 
                        │      │                  ├ [2]: https://go.dev/cl/847314 
                        │      │                  ├ [3]: https://go.dev/issue/81857 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [5]: https://groups.google.com/g/golang-announce/c/ZPwCyRUu
                        │      │                  │      GBs 
                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-78659 
                        │      │                  ├ [7]: https://pkg.go.dev/vuln/GO-2026-6603 
                        │      │                  ├ [8]: https://www.cve.org/CVERecord?id=CVE-2026-78659 
                        │      │                  ╰ [9]: https://www.openwall.com/lists/oss-security/2026/10/08/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.27Z 
                        │      ╰ LastModifiedDate: 2026-10-09T16:35:35.9Z 
                        ├ [5]  ╭ VulnerabilityID : CVE-2026-78660 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6610 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f5
                        │      │                  │         3f1fda9b3f3e35eae32b 
                        │      │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfea
                        │      │                            b4e02867b9f5fbfcf8fd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78660 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:252e6bba94236512d7ebefe40fff18339e3f6448c00506f408c48
                        │      │                   6cee45a48e4 
                        │      ├ Title           : Historically, we have been rather lax about malformed
                        │      │                   framing-related  ... 
                        │      ├ Description     : Historically, we have been rather lax about malformed
                        │      │                   framing-related headers in our HTTP/2 implementation, as
                        │      │                   they cannot interfere with HTTP/2 framing. However, this
                        │      │                   makes it possible for our HTTP/2 implementation to forward
                        │      │                   responses containing such headers to an HTTP/1 client when
                        │      │                   acting as a reverse proxy. If the HTTP/1 client also does
                        │      │                   not behave strictly enough, this can result in response
                        │      │                   smuggling. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-444 
                        │      ├ VendorSeverity   ╭ azure  : 3 
                        │      │                  ├ bitnami: 3 
                        │      │                  ╰ ubuntu : 2 
                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           H/A:N 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0]: https://github.com/golang/go/issues/81115 
                        │      │                  ├ [1]: https://go.dev/cl/835145 
                        │      │                  ├ [2]: https://go.dev/cl/836385 
                        │      │                  ├ [3]: https://go.dev/issue/81115 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-78660 
                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2026-6610 
                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-78660 
                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/10/08/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.51Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.243Z 
                        ├ [6]  ╭ VulnerabilityID : CVE-2026-78663 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6612 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f5
                        │      │                  │         3f1fda9b3f3e35eae32b 
                        │      │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfea
                        │      │                            b4e02867b9f5fbfcf8fd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78663 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:20c8b51330a8369d9d2c743353c1365f1f28432f018210ef25d86
                        │      │                   c3686fdbda6 
                        │      ├ Title           : net/http: net/http/internal/http2: golang:
                        │      │                   golang.org/x/net/http2: golang: flow control limit bypass
                        │      │                   via double refund in HTTP/2 server 
                        │      ├ Description     : The HTTP/2 server can refund connection-level flow control
                        │      │                   twice for the same data: Once when a client resets a stream
                        │      │                   (refunding data for any sent-but-unread portion of the
                        │      │                   stream), and again when a request handler reads the buffered
                        │      │                    data. A malicious client can exploit this to bypass the
                        │      │                   configured connection-level flow control limit
                        │      │                   (MaxReceiveBufferPerConnection). Total buffered data is
                        │      │                   still limited by the concurrent stream limit and
                        │      │                   stream-level flow control. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-675 
                        │      ├ VendorSeverity   ╭ azure  : 3 
                        │      │                  ├ bitnami: 4 
                        │      │                  ├ redhat : 2 
                        │      │                  ╰ ubuntu : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           H/A:H 
                        │      │                  │         ╰ V3Score : 9.1 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:L 
                        │      │                            ╰ V3Score : 5.3 
                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-78663 
                        │      │                  ├ [1] : https://github.com/golang/go/issues/81743 
                        │      │                  ├ [2] : https://go.dev/cl/847187 
                        │      │                  ├ [3] : https://go.dev/cl/847310 
                        │      │                  ├ [4] : https://go.dev/issue/81743 
                        │      │                  ├ [5] : https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/ZPwCyRU
                        │      │                  │       uGBs 
                        │      │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2026-78663 
                        │      │                  ├ [8] : https://pkg.go.dev/vuln/GO-2026-6612 
                        │      │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2026-78663 
                        │      │                  ╰ [10]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.647Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.42Z 
                        ├ [7]  ╭ VulnerabilityID : CVE-2026-94439 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6613 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f5
                        │      │                  │         3f1fda9b3f3e35eae32b 
                        │      │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfea
                        │      │                            b4e02867b9f5fbfcf8fd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94439 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:e54a2a790cf843aa16611fd25f719819072188d5f06a49f085218
                        │      │                   65db7f88122 
                        │      ├ Title           : net/http: golang: net/http: HTTP request smuggling via
                        │      │                   improper handling of HTTP/1 CONNECT responses 
                        │      ├ Description     : When an HTTP server handler sends a 2xx response to an
                        │      │                   HTTP/1 CONNECT request and returns without hijacking the
                        │      │                   connection, the server improperly continues to read and
                        │      │                   serve requests from the connection. Since a 2xx response to
                        │      │                   an HTTP/1 CONNECT converts the connection into a tunnel, the
                        │      │                    server should not treat the connection as continuing to
                        │      │                   contain HTTP. The impact of this misbehavior is mostly
                        │      │                   limited to potential request smuggling, where an
                        │      │                   intermediate proxy considers the data on the connection to
                        │      │                   be tunneled and the server considers it to be HTTP. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-444 
                        │      ├ VendorSeverity   ╭ bitnami: 3 
                        │      │                  ├ redhat : 2 
                        │      │                  ╰ ubuntu : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
                        │      │                  │         │           N/A:N 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
                        │      │                            │           L/A:N 
                        │      │                            ╰ V3Score : 6.5 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-94439 
                        │      │                  ├ [1]: https://github.com/golang/go/issues/81744 
                        │      │                  ├ [2]: https://go.dev/cl/847311 
                        │      │                  ├ [3]: https://go.dev/issue/81744 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-94439 
                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2026-6613 
                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-94439 
                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/10/08/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:04.76Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:50.703Z 
                        ├ [8]  ╭ VulnerabilityID : CVE-2026-94440 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6608 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f5
                        │      │                  │         3f1fda9b3f3e35eae32b 
                        │      │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfea
                        │      │                            b4e02867b9f5fbfcf8fd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94440 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:e7b441c19565c1f959adb7e8bf34ac5c0da7bf65858958ec454fc
                        │      │                   8b6aeba1540 
                        │      ├ Title           : Parsing a multipart form can bypass memory limits and read
                        │      │                   an arbitrar ... 
                        │      ├ Description     : Parsing a multipart form can bypass memory limits and read
                        │      │                   an arbitrarily long line into memory when the remaining
                        │      │                   limit at the start of a part is less than 400 bytes. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-770 
                        │      ├ VendorSeverity   ╭ bitnami: 3 
                        │      │                  ╰ ubuntu : 2 
                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0]: https://github.com/golang/go/issues/81741 
                        │      │                  ├ [1]: https://go.dev/cl/847307 
                        │      │                  ├ [2]: https://go.dev/issue/81741 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-94440 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-6608 
                        │      │                  ├ [6]: https://www.cve.org/CVERecord?id=CVE-2026-94440 
                        │      │                  ╰ [7]: https://www.openwall.com/lists/oss-security/2026/10/08/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:04.917Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:50.907Z 
                        ├ [9]  ╭ VulnerabilityID : CVE-2026-94448 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6599 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f5
                        │      │                  │         3f1fda9b3f3e35eae32b 
                        │      │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfea
                        │      │                            b4e02867b9f5fbfcf8fd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94448 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:9176782d5f9a6ef826217d1c698098990e302cc1ed7d6f27ad8db
                        │      │                   7713bd6b731 
                        │      ├ Title           : html/template: golang: golang: cross-site scripting via
                        │      │                   consecutive expressions in JavaScript template literals 
                        │      ├ Description     : When a JavaScript template literal contains consecutive
                        │      │                   expressions, the context tracking state was not properly
                        │      │                   reset upon entering a new expression. We now ensure that
                        │      │                   template-literal expression entries correctly reset context
                        │      │                   variables so all subsequent regular expression literals are
                        │      │                   accurately recognized and escaped. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-79 
                        │      ├ VendorSeverity   ╭ bitnami: 2 
                        │      │                  ╰ redhat : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
                        │      │                  │         │           L/A:N 
                        │      │                  │         ╰ V3Score : 6.1 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
                        │      │                            │           L/A:N 
                        │      │                            ╰ V3Score : 6.1 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-94448 
                        │      │                  ├ [1]: https://go.dev/cl/839866 
                        │      │                  ├ [2]: https://go.dev/issue/81821 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-94448 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-6599 
                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-94448 
                        │      ├ PublishedDate   : 2026-10-08T23:17:05.3Z 
                        │      ╰ LastModifiedDate: 2026-10-15T16:18:24.327Z 
                        ├ [10] ╭ VulnerabilityID : CVE-2026-97030 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6600 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f5
                        │      │                  │         3f1fda9b3f3e35eae32b 
                        │      │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfea
                        │      │                            b4e02867b9f5fbfcf8fd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97030 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:561704aa7edf35a1a6f36d0ee8813a392ef25bca1667f36cd24aa
                        │      │                   cba1082a08a 
                        │      ├ Title           : A trusted template author may have previously written a
                        │      │                   valid template ... 
                        │      ├ Description     : A trusted template author may have previously written a
                        │      │                   valid template wherein the use of the 'yield' keyword would
                        │      │                   not be correctly escaped. We now ensure that valid keyword
                        │      │                   uses are escaped and non-keyword uses are not escaped. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-79 
                        │      ├ VendorSeverity   ─ bitnami: 2 
                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
                        │      │                            │           L/A:N 
                        │      │                            ╰ V3Score : 6.1 
                        │      ├ References       ╭ [0]: https://go.dev/cl/840925 
                        │      │                  ├ [1]: https://go.dev/issue/81823 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-97030 
                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-6600 
                        │      ├ PublishedDate   : 2026-10-08T23:17:05.91Z 
                        │      ╰ LastModifiedDate: 2026-10-15T16:18:24.817Z 
                        ├ [11] ╭ VulnerabilityID : CVE-2026-97032 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6617 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f5
                        │      │                  │         3f1fda9b3f3e35eae32b 
                        │      │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfea
                        │      │                            b4e02867b9f5fbfcf8fd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97032 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:05bd6aa28f39b2305c6723d78021d045d371ea91f5bdcbe406979
                        │      │                   88c77346169 
                        │      ├ Title           : net/http: net/http/internal/http2: golang:
                        │      │                   golang.org/x/net/http2: net/http: Denial of Service via
                        │      │                   concurrent HPACK encoder modification 
                        │      ├ Description     : HTTP/2 servers could end up crashing due to inadvertently
                        │      │                   modifying its HPACK encoder concurrently. This happens
                        │      │                   because the server modifies the HPACK encoder from two
                        │      │                   goroutines without synchronization: one uses the encoder to
                        │      │                   encode a HEADERS frame as part of a response sent to a
                        │      │                   client and the other modifies the encoder's table size when
                        │      │                   handling a SETTINGS frame containing
                        │      │                   SETTINGS_HEADER_TABLE_SIZE that a client sends. A malicious
                        │      │                   client can repeatedly send a request while changing the
                        │      │                   header table size to crash the server. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-362 
                        │      ├ VendorSeverity   ╭ azure  : 2 
                        │      │                  ├ bitnami: 3 
                        │      │                  ╰ redhat : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 5.9 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-97032 
                        │      │                  ├ [1]: https://go.dev/cl/847188 
                        │      │                  ├ [2]: https://go.dev/cl/847313 
                        │      │                  ├ [3]: https://go.dev/issue/81867 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [5]: https://groups.google.com/g/golang-announce/c/ZPwCyRUu
                        │      │                  │      GBs 
                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-97032 
                        │      │                  ├ [7]: https://pkg.go.dev/vuln/GO-2026-6617 
                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-97032 
                        │      ├ PublishedDate   : 2026-10-08T23:17:06.213Z 
                        │      ╰ LastModifiedDate: 2026-10-15T16:18:24.967Z 
                        ╰ [12] ╭ VulnerabilityID : CVE-2026-56857 
                               ├ VendorIDs        ─ [0]: GO-2026-6604 
                               ├ PkgID           : stdlib@v1.27.1 
                               ├ PkgName         : stdlib 
                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                               │                  ╰ UID : c9698e88b56a1f6e 
                               ├ InstalledVersion: v1.27.1 
                               ├ FixedVersion    : 1.26.9, 1.27.2 
                               ├ Status          : fixed 
                               ├ Layer            ╭ Digest: sha256:173ca374c9379e532daa709cec8632de1474a5b9e2f5
                               │                  │         3f1fda9b3f3e35eae32b 
                               │                  ╰ DiffID: sha256:97591bb1cc3eb8597ab77e3b5093924e3d7ee3a1bfea
                               │                            b4e02867b9f5fbfcf8fd 
                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56857 
                               ├ DataSource       ╭ ID  : govulndb 
                               │                  ├ Name: The Go Vulnerability Database 
                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
                               ├ Fingerprint     : sha256:bd371cba9b9d2d6a5da58526f4cd8a43b358b484a9dab9c12f3f3
                               │                   9645ecc21b7 
                               ├ Title           : os: golang: golang: Directory traversal via Windows junction
                               │                    handling 
                               ├ Description     : On Windows, when the target of Root.Mkdir or Root.MkdirAll
                               │                   is a junction pointing to an empty location, the operation
                               │                   can create a directory at the junction target even when that
                               │                    target is located outside the root. This only applies to
                               │                   operations where the last path component is a junction
                               │                   (path/to/junction, but not path/junction/target). 
                               ├ Severity        : LOW 
                               ├ CweIDs           ─ [0]: CWE-1386 
                               ├ VendorSeverity   ╭ bitnami: 4 
                               │                  ╰ redhat : 1 
                               ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
                               │                  │         │           H/A:H 
                               │                  │         ╰ V3Score : 9.8 
                               │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
                               │                            │           L/A:N 
                               │                            ╰ V3Score : 3.3 
                               ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56857 
                               │                  ├ [1]: https://go.dev/cl/847305 
                               │                  ├ [2]: https://go.dev/issue/81739 
                               │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                               │                  │      znI 
                               │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-56857 
                               │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-6604 
                               │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-56857 
                               ├ PublishedDate   : 2026-10-08T23:17:01.487Z 
                               ╰ LastModifiedDate: 2026-10-09T16:35:35.9Z 
```
