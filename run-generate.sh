touch output.log
echo "== Running Model: Distrito == " >> output.log
rails g resource distrito name:string >> output.log
echo "== Running Model: Distrito == " >> output.log
rails g resource concertstatus name:string >> output.log
echo "== Running Model: Distrito == " >> output.log
rails g resource score value:integer comment:string >> output.log
echo "== Running Model: Distrito == " >> output.log
rails g resource ticket user_id:integer concert_id:integer >> output.log
echo "== Running Model: Distrito == " >> output.log
rails g resource user_band user_id:integer band_id:integer >> output.log
echo "== Running Model: Distrito == " >> output.log
rails g resource usertype name:string administrator:boolean >> output.log
echo "== Running Model: Distrito == " >> output.log
rails g scaffold lounge name:string direction:string geolocation:string phone:string distrito:references>> output.log
echo "== Running Model: Distrito == " >> output.log
rails g scaffold band name:string genre:string >> output.log
echo "== Running Model: Distrito == " >> output.log
rails g scaffold user username:string email:string password:string dni:string tui:string gender:string givenname:string lastname1:string lastname2:string usertype:references >> output.log
echo "== Running Model: Distrito == " >> output.log
rails g resource booking description:string start:datetime end:datetime year:integer month:integer day:integer dayofweek:integer lounge:references>> output.log
echo "== Running Model: Distrito == " >> output.log
rails g scaffold concert name:string score:references owner:references band:references lounge:references booking:references status:references >> output.log
echo "== Running Model: Distrito == " >> output.log
rails g resource comment content:string ordinal:string author:references >> output.log



# echo "== db:migrate ====================== " >> output.log
# rake db:migrate >> output.log
echo "== Model Generated Completed == " >> output.log


# rails d scaffold user   
# rails d scaffold concert   
# rails d scaffold lounge   
# rails d scaffold lounge   
# rails d resource usertype   
# rails d resource user_band   
# rails d resource ticket   
# rails d resource score   
# rails d resource comment   
# rails d resource distrito   
# rails d resource concertstatus   
# rails d resource booking   
