# build_files.sh
pip install -r requirements.txt

# make migrations
python3.9 manage.py migrate auth
python3.9 manage.py migrate --run-syncdb
python3.9 manage.py collectstatic
