# Nessus Parser
Nessus Parser from http://www.melcara.com/archives/253

This is a program to parse a series of Nessus XMLv2 files into a XLSX file.  The data from the XML file is placed into a series of tabs to for easier review and reporting.  New features with this edition are better reporting of policy plugin families, user account reporting, summary graphs, and a home page with summary data.

## Install dependencies
```cpan install XML::TreePP Data::Dumper Math::Round Excel::Writer::XLSX Data::Table Excel::Writer::XLSX::Chart Getopt::Std```

## Credits
This script has been designed and maitained by Melcara.

For more information and questions please contact Cody Dumont cody@melcara.com
## Recent changes

- 2026-02-10  Added CI workflow to run Perl syntax checks and install Perl
  dependencies with cpanm (branch: ci/add-github-actions, PR #1).
- 2026-02-10  Local development: Strawberry Perl and required CPAN modules
  installed for developer convenience and local perl -c checks.

## Changes (since adding mock data)

- Added GitHub Actions CI step to install and run `Perl::Critic` (lint) and
  verify Perl modules: changes in `.github/workflows/ci.yml`.
- Created a safe, non-sensitive mock Nessus XMLv2 file: `scan.nessus` for
  functional testing of the parser.
- Fixed `parse_nessus_xml.v24.pl` to use lexical filehandles / three-arg
  `open` calls and to avoid exiting when encountering unknown plugin
  families so mock data can be parsed during tests.
- Added an SBOM in CycloneDX JSON format: `sbom.cyclonedx.json` listing
  detected Perl module dependencies and key files.
- Opened PR `ci/add-github-actions -> master` to introduce these changes.

## Project ToDo (short)

- Review and tune `Perl::Critic` policy/severity in CI so lint failures are
  actionable but not blocking for non-critical style issues.
- Lock dependency versions and add a `cpanfile` (or equivalent) with exact
  module versions for reproducible installs; update `sbom.cyclonedx.json`
  with exact versions.
- Add automated SBOM generation to CI so the SBOM stays up-to-date on
  accepted merges.
- Add small unit / integration tests that run the parser against
  `scan.nessus` and assert an XLSX is created and contains expected sheets
  (e.g., `UserAccountData`, `Summary Report Data`).
- Add `LICENSE` and CONTRIBUTING guidelines if desired.

## Todo by kalvinparker

- **License:** Ensure a LICENSE file is present and matches project intent.
- **Contributing:** Open pull requests from topic branches; include a clear
  description and tests for new behavior.
- **CI required:** All PRs must pass CI (lint/tests) before merging.
- **Commit messages:** Use concise, conventional-style commit messages
  (e.g. eat:, ix:, chore:).
- **Security:** Report vulnerabilities privately to the repository owner or
  the email listed in the repo metadata.
