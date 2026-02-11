# Nessus Parser
Nessus Parser from http://www.melcara.com/archives/253

This is a program to parse a series of Nessus XMLv2 files into a XLSX file.  The data from the XML file is placed into a series of tabs to for easier review and reporting.  New features with this edition are better reporting of policy plugin families, user account reporting, summary graphs, and a home page with summary data.

## Install dependencies
```cpan install XML::TreePP Data::Dumper Math::Round Excel::Writer::XLSX Data::Table Excel::Writer::XLSX::Chart Getopt::Std```

## Quick: Open the generated report (Windows)

Open PowerShell or Command Prompt, change to the repository root and start the generated report file.

PowerShell:

```powershell
Set-Location 'D:\My Documents\Projects\ksyp_nessus-parser'
Start-Process .\nessus_report_20260210233823.xlsx
```

Command Prompt (cmd):

```cmd
cd /d "D:\My Documents\Projects\ksyp_nessus-parser"
start "" "nessus_report_20260210233823.xlsx"
```

You can also launch the PowerShell command from cmd:

```cmd
cd /d "D:\My Documents\Projects\ksyp_nessus-parser"
powershell -Command "Start-Process .\\nessus_report_20260210233823.xlsx"
```

Generated report file: [nessus_report_20260210233823.xlsx](nessus_report_20260210233823.xlsx)

## Credits
This script has been designed and maitained by Melcara.

For more information and questions please contact Cody Dumont cody@melcara.com

## Recent changes

- 2026-02-10  Added CI workflow to run Perl syntax checks and install Perl
  dependencies with cpanm (branch: ci/add-github-actions, PR #1).
- 2026-02-10  Local development: Strawberry Perl and required CPAN modules
  installed for developer convenience and local perl -c checks.

## Todo by kalvinparker

- **License:** Ensure a LICENSE file is present and matches project intent.
- **Contributing:** Open pull requests from topic branches; include a clear
  description and tests for new behavior.
- **CI required:** All PRs must pass CI (lint/tests) before merging.
- **Commit messages:** Use concise, conventional-style commit messages
  (e.g. eat:, ix:, chore:).
- **Security:** Report vulnerabilities privately to the repository owner or
  the email listed in the repo metadata.
