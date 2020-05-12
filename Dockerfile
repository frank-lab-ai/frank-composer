FROM mongo:4.2.6
RUN echo 'FRANK init data...'; apt-get update && apt-get install wget && wget https://frankqa.s3-eu-west-1.amazonaws.com/public/mongo_frank_init.tar.gz && tar -xzvf mongo_frank_init.tar.gz
#CMD echo 'FRANK content'; apt-get update ; apt-get install wget ; wget https://frankqa.s3-eu-west-1.amazonaws.com/public/mongo_frank_init.tar.gz ; tar -xzvf mongo_frank_init.tar.gz; \
CMD mongoimport --host mongo --db frank --collection conceptheuristics --drop --file mongo_data/conceptheuristics.json; \
    mongoimport --host mongo --db frank --collection wb_countries --drop --file mongo_data/wb_countries.json; \
    mongoimport --host mongo --db frank --collection wikidataprops --drop --file mongo_data/wikidataprops.json; \
    mongoimport --host mongo --db frank --collection worldbankprops --drop --file mongo_data/worldbankprops.json; \
    mongo --host mongo --eval "db=db.getSiblingDB('frank'); db.wb_countries.createIndex({name:'text'}); db.wikidataprops.createIndex({label:'text'}); db.worldbankprops.createIndex({name:'text'});"
