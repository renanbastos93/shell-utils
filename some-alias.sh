#!/bin/bash

# Functions to auxiliar alias pySql
function pySql-removeData(){
    TABLE=$1
    FIELD=$2
    echo -e "use azionmanager; delete from $TABLE where name='$FIELD';" | python manage.py dbshell
}

function pySql-lastMigration(){
    echo -e "use azionmanager; select * from django_migrations order by name DESC LIMIT 1;" | python manage.py dbshell
}

function pySql-listAll(){
    TABLE=$1
    echo -e "use azionmanager; select * from $TABLE;" | python manage.py dbshell
}

function pySql-listLimit(){
    TABLE=$1
    LIMIT=$2
    echo -e "use azionmanager; select * from $TABLE LIMIT $LIMIT;" | python manage.py dbshell
}

# Alias to front-end
alias sass='grunt build_css:styleguide'
alias js='grunt build_js:dev'

# Alias to SQL of Django
alias pySql='echo -e "
    pySql-lastMigration \n
    pySql-removeData <your table> <your field> \n
    pySql-listAll <your table> \n
    pySql-listLimit <your table> <your limit> \n
"'

# Alias to build Python or Python + (JS or SASS)
alias pyserver='python manage.py runserver_plus 0.0.0.0:8080'
alias pysass='sass && pyserver'
alias pyjs='js && pyserver'
