# The Grinch
A Web application for the course "Web Technologies", Universidad de los Andes.
#### Members:
Raimundo Gonzalez,
Gustavo Vicuña
## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
$ rails db:seed
```

Finally, you'll be ready to run the app in a local server:

```
$ rails server
```
## Progress
#### Done:
* Devise
1. System Access
    * Log in with email address
    * Log out
2. Registration
    * Change password
3. User Administration
    * Edit User
    * Change password
    * Make user an admin
    * View user details
        * Last access
        * User role
5. User Profile
    * View user profile
    * Edit user profile
       * Edit user fields: name, bio, location.
    * View posts
6. Posts
    * Edit post
    * View publisher profile
7. Comment threads for posts
    * View author profile
#### Testing:
#### On work:
6. Posts (Gus)
    * View post
        * View title, description, location, and creation date
        * View post location on map
        * View upvotes and downvotes
        * View images
        * View file attachments
    * Delete post
    * Upvote post
    * Downvote post
    * Follow post
    * Mark post as inappropriate
#### Missing:
1. System Access
    * Log in with Google authentication
2. Registration
    * Password recovery (devise)
7. Comment threads for posts
    * Add comment to report comments thread
    * Edit comment in report comments thread
    * Tag user in comment
8. User Search
    * Search by nickname
    * Search by location
#### Bugs:
2. Registration
    * User registration
3. User Administration (Gus)
    * Delete user
    * Create user