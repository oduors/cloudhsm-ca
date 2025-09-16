#!/bin/bash
openssl req -engine cloudhsm -new -key [PRIVATE_KEY_REF] -out root_ca.csr \
    -subj "/C=[COUNTRY]/ST=[STATE]/L=[CITY]/O=[ORGANIZATION]/OU=[ORG_UNIT]/CN=[COMMON_NAME]"
