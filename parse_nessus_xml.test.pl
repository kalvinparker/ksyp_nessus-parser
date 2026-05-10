#!/usr/bin/env node

/**
 * Test suite for Nessus parser
 * Run with: perl parse_nessus_xml.v24.pl --test
 */

use strict;
use warnings;
use Data::Dumper;

print "Nessus Parser Test Suite\n";
print "=" x 50 . "\n";

# Test 1: Module loading
print "Test 1: Module Dependencies\n";
eval {
    use XML::LibXML;
    use Archive::Zip;
    print "✓ Required modules loaded\n";
};
if ($@) {
    print "✗ Missing required modules: $@\n";
}

print "\n";

# Test 2: File validation
print "Test 2: Input File Validation\n";
if (-f 'scan.nessus') {
    print "✓ Sample scan.nessus file found\n";
} else {
    print "✗ Sample scan.nessus file not found\n";
}

print "\n" . "=" x 50 . "\n";
print "Tests complete\n";
