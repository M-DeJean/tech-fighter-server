## TechFIghter

[Live App](https://tech-fighter-client.vercel.app)

![Screenshot1](https://i.ibb.co/HFdQQhL/Screen-Shot-2020-11-10-at-8-49-09-PM.png)
![Screenshot2](https://i.ibb.co/Q6GbDfp/Screen-Shot-2020-11-10-at-8-58-27-PM.png)
![Screenshot3](https://i.ibb.co/r5WX6yM/Screen-Shot-2020-11-10-at-8-58-59-PM.png)

## How To Play 

TechFighter is a turn-based fighting game inspired by classic arcade games from the 80s and 90s. <br/> There are 6 different characters to choose from, all with their own fighting styles and attacks. Each character has 3 attacks:

Light(L) Medium(M) Special(S)

Each attack deals a certain amount of damage and costs a certain amount of stamina. Each fighter also has the option to Defend(D), which restores a small amount of health and stamina. After the player attacks, the computer generated opponent will perform a random attack(or defend) and the match will continue until either the player or computer's health reaches 0.

## API Documentation

`/api/fighters`
- GET - Fetches a list of each character

`/api/fighters:fighter_id`
- GET - Fetches the selected fighter based upon the requested ID

`/api/fighters/random/:fighter_id`
- GET - Fetches a random character that doesnt match the requested ID

`/api/attacks`
- GET - Fetches all available attacks

`/api/attacks/:attack_id`
- GET - Fetches specific attack based upon requested ID

`api/fighting-styles`
- GET - Fetches all available fighting styles

`api/fighting-styles/:fighting_style_id`
- GET -Fetches specific style besed upon requested ID

## STACK

* JavaScript
* Node
* React
* Express
* HTML
* CSS

## Scripts

Start the application `npm start`

Start nodemon for the application `npm run dev`

Run the tests `npm test`

## Deploying

When your new project is ready for deployment, add a new Heroku application with `heroku create`. This will make a new git remote called "heroku" and you can then `npm run deploy` which will push to this remote's master branch.