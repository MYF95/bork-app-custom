This is an app created by following the Michael Hartl tutorial, in railstutorial.org.

Somethings have been changed to my own taste, and I currently plan to do some modifications (maybe) on the app.

Most additions will most likely make it look like twitter.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

Feels goodman sun with face clap

Heroku deployment at: bork-app.herokuapp.com/

Things to do:
    -Add a local profile image, so you set it in the app.
    -Add a small follow/unfollow button in the list of Borkos (Users)
    -Add a filter to list users.
    -Add search bar for users and microposts.
    -Add images by itself, without text constraint.
    -Add a delete your own account. (Your login would still be available, but only a restore account appears.)
        +Other users won't be able to find you, or user is unavailable (still would have to think)
    -Add a restore your account.
    -Add emojis, using twitch emotes or something.
    
Longshot stuff to add:
    -Web game rpg using your profiles.
    -Achievementes and so within your profile.
    -Connection to other places using this account.
    -Somehow link knowyourmeme articles to use them. API treatment