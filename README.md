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
```

Finally, you'll be ready to run the app in a local server:

```
$ rails server
```
## Progress
#### Done:
#### Testing:
#### On work:
#### Missing:
* Devise:
    1. System Access
        * Log in with email address
        * Log in with Google authentication
        * Log out
    2. Registration
        * User registration
        * Change password
        * Password recovery
3. User Administration
    * View user details
        * Last access
        * User role
    * Edit User
        * Change password
    * Delete user
    * Make user an admin
5. User Profile
    * View user profile
    * Edit user profile
        * Edit user fields: name, bio, location.
    * View posts
6. Posts
    * View post
        * View title, description, location, and creation date
        * View post location on map
        * View upvotes and downvotes
        * View images
        * View file attachments
    * Delete post
    * Edit post
    * Upvote post
    * Downvote post
    * Follow post
    * View publisher profile
    * Mark post as inappropriate
7. Comment threads for posts
    * Add comment to report comments thread
    * Edit comment in report comments thread
    * Tag user in comment
    * View author profile
8. User Search
    * Search by nickname
    * Search by location
#### Bugs: