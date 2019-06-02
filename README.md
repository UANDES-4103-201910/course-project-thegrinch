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
    * View user details
        * Last access
        * User role
4. System Administration
    * View administrator details
    * Edit administrator
        * Change password
5. User Profile
    * View user profile
    * Edit user profile
       * Edit user fields: name, bio, location.
    * View posts
6. Posts
    * View post
        * View title, description, location, and creation date
        * View upvotes and downvotes
    * Edit post
    * View publisher profile
7. Comment threads for posts
    * View author profile
#### Testing:
#### On work:
6. Posts (Gus)
    * Upvote post
    * Downvote post
    * Follow post
    * Mark post as inappropriate
#### Missing:
1. System Access
    * Log in with Google authentication
2. Registration
    * Password recovery (devise)
6. Posts
    * View post
        * View file attachments
    * Delete post
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
3. User Administration
    * Delete user
    * Create user
    * Make user an admin
4. System Administration
    * New administrator
    * Delete administrator