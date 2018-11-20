#!/bin/bash

# Functions to auxiliar Alias
pyRemoveDataInTable(){
    TABLE=$1
    FIELD=$2
    echo -e "use azionmanager; delete from $TABLE where name='$FIELD';" | python manage.py dbshell
}

pyLastMigration(){
    echo -e "use azionmanager; select * from django_migration DESC LIMIT 1;" | python manage.py dbshell
}

pySelectAllDataInTable(){
    TABLE=$1
    echo -e "use azionmanager; select * from $TABLE;" | python manage.py dbshell
}

pySelectLimitDataInTable(){
    TABLE=$1
    LIMIT=$2
    echo -e "use azionmanager; select * from $TABLE LIMIT $LIMIT;" | python manage.py dbshell
}

# Alias to front-end
alias sass='grunt build_css:styleguide'
alias js='grunt build_js:dev'

# Alias to Python 
alias pySql-last-migration=pyLastMigration()
alias pySql-remove-data=pyRemoveDataInTable()
alias pySql-list-all=pySelectAllDataInTable()
alias pySql-list-limit=pySelectLimitDataInTable()
alias pyserver='python manage.py runserver_plus 0.0.0.0:8080'
alias pysass='sass && pyserver'
alias pyjs='js && pyserver'
