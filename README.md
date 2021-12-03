# [🐶 Leave it, Chibi! 🤮](https://github.com/chibifanclub/leave-it-chibi-be)

[![Build Status][travis-image]][travis-url]

#### [🐶 Leave it, Chibi! 🤮](https://github.com/chibifanclub/leave-it-chibi-fe)
#### [🐶 Leave it, Chibi! 🤮 App]()

## Table of contents
- [Overview](#overview)
- [Setup](#setup)
- [Schema](#schema)
- [Project Board](#project-board)
- [API](#api)
- [Endpoints](#endpoints)
- [Technologies](#technologies)
- [Contributors](#contributors)

## <ins>Overview</ins>

# Leave It, Chibi!
🦴 still need description

This project was based off Turing's capstone project. More details can be found [here](https://mod4.turing.edu/projects/capstone/)

### <ins>Setup</ins>
1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Setup the database: `rails db:{drop,create,migrate}`
4. Run `bundle exec rspec` to test
### <ins>Schema</ins>
![Schema Screenshot]()

### <ins>Project Board</ins>
![Project-Board](https://github.com/orgs/chibifanclub/projects/1)

### <ins>API</ins>
![Schema Screenshot]()

### <ins>Endpoints</ins>
<details>
  <summary>Get all items</summary>
  
  * Method: GET
 
  * Endpoint: api/v1/items
```json
  {
    "data": [
      {
        "id": 1,
        "type": "items",
        "attributes": {
          "name": "remote",
          "description": "plastic",
          "toxicity": 5,
          "treatment": "big surgery", 
          "image": "https://cdn.vox-cdn.com/thumbor/pQ8yv3BoiduWTWBU8oE-8htJLao=/0x0:2040x1360/920x613/filters:focal(857x517:1183x843):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/69149145/DSCF3621_Edited.0.jpg"
        }
      } 
    ]
  }

```
</details>

<details>
  <summary>Get top five items</summary>
  
  * Method: GET
 
  * Endpoint: api/v1/top_five
```json
  {
    "data": [
      {
        "id": 1,
        "type": "items",
        "attributes": {
          "name": "remote",
          "description": "plastic",
          "toxicity": 5,
          "treatment": "big surgery", 
          "image": "https://cdn.vox-cdn.com/thumbor/pQ8yv3BoiduWTWBU8oE-8htJLao=/0x0:2040x1360/920x613/filters:focal(857x517:1183x843):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/69149145/DSCF3621_Edited.0.jpg"
        }
      },
    {
      "id": 2,
        "type": "items",
        "attributes": {
          "name": "onion",
          "description": "vegetable, it will be a slow kill",
          "toxicity": 5,
          "treatment": "stomach pump and prayer if you believe", 
          "image": "https://thesmartcanine.com/wp-content/uploads/2016/11/can-dogs-eat-onion-rings.jpg"
        }
      },
    {
      "id": 3,
        "type": "items",
        "attributes": {
          "name": "grapes",
          "description": "fruit, if you drop it on the floor, catch it before they do",
          "toxicity": 3,
          "treatment": "induce vomiting", 
          "image": "https://i.pinimg.com/564x/bd/fd/74/bdfd742863ae216d6a9c8061d7991cd6.jpg"
        }
      },
    {
      "id": 4,
        "type": "items",
        "attributes": {
          "name": "chocolate",
          "description": "opposite of vanilla",
          "toxicity": 2,
          "treatment": "wait it out, my pup ate a candy bar and survived, JUST DON't LET IT HAPPEN AGAIN", 
          "image": "https://images.wagwalkingweb.com/media/daily_wag/sense_guides/can-dogs-live-after-eating-chocolate/intro/Chocolate2.jpg"
        }
      },
    {
      "id": 5,
        "type": "items",
        "attributes": {
          "name": "tequila",
          "description": "alcohol",
          "toxicity": 2,
          "treatment": "pour peroxide down their throat and make them run in circles and watch a miracle happen", 
          "image": "https://media.istockphoto.com/photos/dog-having-fun-and-drinking-alcohol-picture-id543473028"
        }
      }
    ]
  }

```
</details>

<details>
  <summary>Suggestions</summary>
  
  * Method: POST
 
  * Endpoint: api/v1/suggestions
```json
  {
    "name": "raisin"
    "description": "shriveled up grapes"
  }
```
</details>

### <ins>Technologies</ins>

#### Versions
- Ruby 2.7.2
- Rails 5.2.5

#### Development
![Atom][Atom-img]
![Figaro][Figaro-img]
![Git][Git-img]
![Github][Github-img]
![Markdown][Markdown-img]
![PostgreSQL][PostgreSQL-img]
![Postman][Postman-img]
![Rubocop][Rubocop-img]
![Ruby on Rails][Ruby on Rails-img]

#### Languages
![ActiveRecord][ActiveRecord-img]
![Ruby][Ruby-img]

#### Deployment
![Heroku][Heroku-img]
![Travis CI][Travis CI-img]
![Faraday][Faraday-img]

#### Testing
![Capybara][Capybara-img]
![Launchy][Launchy-img]
![Pry][Pry-img]
![RSPEC][RSPEC-img]
![Shoulda Matchers][Shoulda Matchers-img]
![Simplecov][Simplecov-img]
![VCR][VCR-img]
![Webmock][Webmock-img]

#### Development Principles
![OOP][OOP-img]
![TDD][TDD-img]
![MVC][MVC-img]
![REST][REST-img]

### <ins>Contributors</ins>
![LinkedIn][LinkedIn-img]
- [Eric Sargeant](https://www.linkedin.com/in/)
- [Jessica Jones](https://www.linkedin.com/in/justjj/)
- [Ida Olsen](https://www.linkedin.com/in//)
- [Pretty Boi Khoi](https://www.linkedin.com/in//)
- [Joshua]

![Github][Github-img]
- [Eric Sargeant](https://github.com/cdelpone)
- [Jessica Jones](https://github.com/JeJones21)
- [Ida Olsen](https://github.com/KevinMugele)
- [Pretty Boi Khoi](https://github.com/TannerDale)
- [Joshua]

<!-- Markdown link & img dfn's -->
[travis-image]: https://app.travis-ci.com/TannerDale/bones-be.svg?branch=main
[travis-url]: https://app.travis-ci.com/TannerDale/bones-be
[Github-img]: https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white

<!-- #### Development -->
[Atom-img]: https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white
[Bootstrap-img]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Figaro-img]: https://img.shields.io/badge/figaro-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Git-img]: https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white
[Github-img]: https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white
[Markdown-img]: https://img.shields.io/badge/Markdown-000000?style=for-the-badge&logo=markdown&logoColor=white
[PostgreSQL-img]: https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=flaste&logo=postgresql&logoColor=white
[Postman-img]: https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=Postman&logoColor=white
[Rubocop-img]: https://img.shields.io/badge/rubocop-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Ruby on Rails-img]: https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white

<!-- #### Languages -->
[ActiveRecord-img]: https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=flaste&logo=rubyonrails&logoColor=white
[CSS3-img]: https://img.shields.io/badge/CSS3-1572B6.svg?&style=flaste&logo=css3&logoColor=white
[HTML5-img]: https://img.shields.io/badge/HTML5-0EB201.svg?&style=flaste&logo=html5&logoColor=white
[Ruby-img]: https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white

<!-- #### Deployment -->
[Heroku-img]: https://img.shields.io/badge/Heroku-430098.svg?&style=flaste&logo=heroku&logoColor=white
[Travis CI-img]: https://badgen.net/badge/icon/travis?icon=travis&label
[Faraday-img]: https://img.shields.io/badge/faraday-b81818.svg?&style=flaste&logo=rubygems&logoColor=white

<!-- #### Testing -->
[Capybara-img]: https://img.shields.io/badge/capybara-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Launchy-img]: https://img.shields.io/badge/launchy-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Pry-img]: https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[RSPEC-img]: https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Shoulda Matchers-img]: https://img.shields.io/badge/shoulda--matchers-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Simplecov-img]: https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[VCR-img]: https://img.shields.io/badge/vcr-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Webmock-img]: https://img.shields.io/badge/webmock-b81818.svg?&style=flaste&logo=rubygems&logoColor=white

<!-- #### Development Principles -->
[OOP-img]: https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white
[TDD-img]: https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white
[MVC-img]: https://img.shields.io/badge/MVC-b8b018.svg?&style=flaste&logo=MVC&logoColor=white
[REST-img]: https://img.shields.io/badge/REST-33b818.svg?&style=flaste&logo=REST&logoColor=white

<!-- ### <ins>Contributors</ins> -->
[LinkedIn-img]: https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white
