#!/bin/bash
# run make when files change.

ls | entr -cds 'make'
