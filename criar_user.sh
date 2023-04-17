#!/bin/bash
echo "criando usuarios do sistema ...."

useradd guest1 -c "usuario convidado" -m -s /bin/bash
passwd guest1
passwd guest1 -e
useradd guest2 -c "usuario convidado" -m -s /bin/bash
passwd guest2
passwd guest2 -e
useradd guest -c "usuario convidado" -m -s /bin/bash
passwd guest
passwd guest -e
useradd guest3 -c "usuario convidado" -m -s /bin/bash
passwd guest3
passwd guest3 -e

echo "ooperação finalizada"
