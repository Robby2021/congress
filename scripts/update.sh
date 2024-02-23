#!/bin/sh/env bash

#Bill data
usc-run govinfo --bulkdata=BILLSTATUS
usc-run bills --govtrack $@

#Vote data

usc-run votes --govtrack $@

#Statutes data
usc-run govinfo --collections=STATUTE --extract=mods,pdf
usc-run statutes --volumes=65-86 --govtrack 
usc-run statutes --volumes=65-106 --textversions --extracttext 
