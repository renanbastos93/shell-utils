# Run server Python with Build CSS/ JS using grunt
alias pyserver='python manage.py runserver_plus 0.0.0.0:8080'
alias pysass='grunt build_css:styleguide && pyserver'
alias pyjs='build_js:dev && pyserver'
