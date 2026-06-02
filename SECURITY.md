# Security Policy

## Reporting

Please report security issues privately through GitHub security advisories if
enabled, or by contacting the repository owner directly.

Do not open a public issue containing credentials, customer data, private
business records, CRM exports, invoices, payroll data, tax records, tokens,
cookies, logs, or exploit details.

## Data Safety

This repository should contain public workflow instructions only. It should not
contain real business data.

If private data is accidentally committed:

1. Rotate any exposed credentials immediately.
2. Remove the data from the repository.
3. Treat git history as exposed if the repository was public.
4. Publish a fixed release only after confirming the public branch is clean.
