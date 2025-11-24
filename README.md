# Ruby-3.3.10-Ruby-on-Rails-8.0.2-Multitenancy-Task-Manager-for-Little-and-Middle-Business

Multitenancy Task Manager for Little and Middle Business with using PostgreSQL, Tailwind, Redis, Stripe and gems: pagy, ransack, rolify, chartkick and other. Before you start using the application, please follow these steps:
1)Before launching the project, you need to install Redis and run it:
```bash
$sudo service redis-server start
```
2) Run migrations:
```bash
$rails db:migrate
```
3) Launching a project and Tailwind happens like this:
```bash
$./bin/dev
```
4) The project is launched through the domain http://lvh.me:3000

5) Sent emails are viewed through a domain like http://serenity.lvh.me:3000/letter_opener
 
6)  If you need to connect Stripe, you need to fill in the credentials by running Visual Studio Code in the console
```bash
$VISUAL="code --wait" bin/rails credentials:edit
```
and uncomment the methods *require_subscription!* and *require_enterprise_subscription!* in **application_controller.rb**

7) Administrator Login: admin@admin.com Password: 123456789
   
<img width="1000" height="500" alt="1" src="https://github.com/user-attachments/assets/7a79ffb2-aece-40cc-84b5-2dd03fb6266c" />
<br><br>
<img width="1000" height="500" alt="2" src="https://github.com/user-attachments/assets/82e002f9-3e7d-46f4-82b5-b26b108721d8" />
<br><br>
<img width="1000" height="500" alt="3" src="https://github.com/user-attachments/assets/9fe14196-b21a-420f-b8d2-8b9d6516c387" />
<br><br>
<img width="1000" height="500" alt="4" src="https://github.com/user-attachments/assets/f90404b0-7145-4ff7-b60a-6efb384be803" />
<br><br>
<img width="1000" height="500" alt="5" src="https://github.com/user-attachments/assets/f7223307-fb75-43eb-9188-786ed6df33e1" />
<br><br>
<img width="1000" height="500" alt="6" src="https://github.com/user-attachments/assets/2ddf785f-a9e8-451a-813e-1a12e588743c" />
<br><br>
<img width="1000" height="500" alt="7" src="https://github.com/user-attachments/assets/790094c5-0a9c-4e8f-8cef-eeb33c2c33f3" />
<br><br>
<img width="1000" height="500" alt="8" src="https://github.com/user-attachments/assets/80da84cf-5521-47ed-831b-1dae19b6e9e5" />
<br><br>
<img width="1000" height="500" alt="9" src="https://github.com/user-attachments/assets/f3bf5319-ac54-4b99-a873-54275e38b1ea" />
<br><br>
