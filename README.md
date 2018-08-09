# [Stripe_maichimp](https://stripemaichimp.herokuapp.com/)

Ce Readme permet dans un formulaire de renseigner son adresse mail et de payer pour accéder à une newsletter.


------------------------------
# On utilise;

* la base sqlite3
* ruby '2.5.1'
* gem 'rails', '~> 5.2.1'


------------------------------
# Instructions #

Pour tester cette application, importez le dossier sur votre pc, en suivant les instructions suivantes;

```sh
Importez dans votre dossier,

$ git clone https://github.com/loundness/stripe_mailchimp

$ cd stripe_mailchimp

$ bundle install --without production

$ rails db:migrate

$ rails server
```

Pour accéder à la page Heroku, [voici le lien](https://stripemaichimp.herokuapp.com/)