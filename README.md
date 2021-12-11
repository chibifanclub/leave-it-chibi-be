# [🐶 Leave it, Chibi! 🤮](https://github.com/chibifanclub/leave-it-chibi-be)

[![Build Status][travis-image]][travis-url]

#### [🐶 Leave it, Chibi! 🤮](https://github.com/chibifanclub/leave-it-chibi-fe)
#### [🐶 Leave it, Chibi! 🤮 App]()

## Table of contents
- [Overview](#overview)
- [Setup](#setup)
- [Schema](#schema)
- [Project Board](#project-board)
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
![Screen Shot 2021-12-01 at 6 14 58 PM](https://user-images.githubusercontent.com/80985215/144763241-9844be52-513b-4fad-82f8-0ce69046536c.png)


### <ins>Project Board</ins>
![Project-Board](https://github.com/orgs/chibifanclub/projects/1)

### <ins>Endpoints</ins>
<details>
  <summary>Get all items</summary>
  
  * Method: GET
 
  * Endpoint: https://chibi-be.herokuapp.com/api/v1/items
  
  Send request in the body: 
  
  ```json
  {
    "name": "onion"
  }
  ```
  Returns: 
  
```json
  {
    "data": [
      {
        "id": 1,
        "type": "item",
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
        "type": "item",
        "attributes": {
          "name": "remote",
          "description": "plastic",
          "toxicity": 5,
          "treatment": "big surgery",
          "image": "https://cdn.vox-cdn.com/thumbor/pQ8yv3BoiduWTWBU8oE-8htJLao=/0x0:2040x1360/920x613/filters:focal(857x517:1183x843):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/69149145/DSCF3621_Edited.0.jpg"
        }
      },
    {
      "id": 4,
        "type": "item",
        "attributes": {
          "name": "onion",
          "description": "vegetable, it will be a slow kill",
          "toxicity": 5,
          "treatment": "stomach pump and prayer if you believe",
          "image": "https://thesmartcanine.com/wp-content/uploads/2016/11/can-dogs-eat-onion-rings.jpg"
        }
      },
    {
      "id": 7,
        "type": "item",
        "attributes": {
          "name": "grapes",
          "description": "fruit, if you drop it on the floor, catch it before they do",
          "toxicity": 3,
          "treatment": "induce vomiting",
          "image": "https://i.pinimg.com/564x/bd/fd/74/bdfd742863ae216d6a9c8061d7991cd6.jpg"
        }
      },
    {
      "id": 8,
        "type": "item",
        "attributes": {
          "name": "chocolate",
          "description": "opposite of vanilla",
          "toxicity": 2,
          "treatment": "wait it out, my pup ate a candy bar and survived, JUST DON't LET IT HAPPEN AGAIN",
          "image": "https://images.wagwalkingweb.com/media/daily_wag/sense_guides/can-dogs-live-after-eating-chocolate/intro/Chocolate2.jpg"
        }
      },
    {
      "id": 10,
        "type": "item",
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

  * Endpoint: https://chibi-be.herokuapp.com/api/v1/suggest
```json
  {
    "name": "raisin"
    "description": "shriveled up grapes"
  }
  ```
  if already in items, it will return item: 
  
  for example:
  
  ```json
  {
    "name": "candy"
  }
  ```
  will return:
  
  ```json
  
  {
    "data": [
        {
            "id": "11",
            "type": "item",
            "attributes": {
                "name": "candies",
                "description": "Candy, gum, toothpaste, baked goods, and some diet foods are sweetened with xylitol. It can cause your dog's blood sugar to drop and can also cause liver failure... Eventually, your dog may have seizures.",
                "toxicity": 3,
                "treatment": "There is no antidote for xylitol poisoning, although treatment with intravenous dextrose (glucose) supplementation and liver protective drugs are beneficial.",
                "image": "https://assets3.thrillist.com/v1/image/2895077/1200x600/crop;"
            }
        }
    ]
}
  
  
```
</details>

<details>
  <summary>Get one item</summary>
  
  * Method: GET
 
  * Endpoint: https://chibi-be.herokuapp.com/api/v1/:id (for example: https://chibi-be.herokuapp.com/api/v1/8)
  
```json
  {
    "data": {
        "id": "2",
        "type": "item", 
        "attributes": {
            "name": "garlic",
            "description": "Toxic doses of garlic can cause damage to the red blood cells (making them more likely to       rupture) leading to anemia. GI upset can also occur (e.g., nausea, drooling, abdominal pain, vomiting, diarrhea). ... While tiny amounts of these foods in some pets, especially dogs, may be safe, large amounts can be very toxic.",
            "toxicity": 3,
            "treatment": "Your veterinarian might recommend intravenous fluids to keep him hydrated, and may prescribe a medication to control vomiting. In severe cases, blood transfusions might be necessary.",
            "image": "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2021%2F10%2F12%2Fcan-dog-eat-garlic.png&q=85"
        }
    }
}

```
</details>

<details>
  <summary>Get Veterinarians</summary>
  
  * Method: GET

  * Parameters: City, State ex. "Cheyenne, WY"
                or ZIP code ex. "82001"
 
  * Endpoint: https://chibi-be.herokuapp.com/api/v1/veterinarians (for example: https://chibi-be.herokuapp.com/api/v1/veterinarians?location=Denver,CO)
  
```json
{
    "data": [
        {
            "id": null,
            "type": "veterinarian",
            "attributes": {
                "name": "5280 Veterinary Care",
                "address": "3100 Gilpin St, Denver, CO 80205",
                "phone": "(720) 789-7000",
                "reviews": 89,
                "rating": 4.5,
                "image": "https://s3-media3.fl.yelpcdn.com/bphoto/Rw7hk8x4D8XUWJPt5VwYwA/o.jpg"
            }
        },
        {
            "id": null,
            "type": "veterinarian",
            "attributes": {
                "name": "Park Hill Veterinary Medical Center",
                "address": "2255 Oneida St, Denver, CO 80207",
                "phone": "(303) 388-2255",
                "reviews": 160,
                "rating": 4.0,
                "image": "https://s3-media2.fl.yelpcdn.com/bphoto/fpw6Uzz-YPg9_NhTvvibwQ/o.jpg"
            }
        },
        {
            "id": null,
            "type": "veterinarian",
            "attributes": {
                "name": "Whole Pet Wellness Veterinary Services",
                "address": "Denver, CO 80207",
                "phone": "(720) 583-4442",
                "reviews": 17,
                "rating": 5.0,
                "image": "https://s3-media1.fl.yelpcdn.com/bphoto/DMD8hBAxPp9iiqohe-JmCA/o.jpg"
            }
        },
        {
            "id": null,
            "type": "veterinarian",
            "attributes": {
                "name": "VCA Alameda East Veterinary Hospital",
                "address": "9770 E Alameda Ave, Denver, CO 80247",
                "phone": "(303) 366-2639",
                "reviews": 297,
                "rating": 3.5,
                "image": "https://s3-media2.fl.yelpcdn.com/bphoto/clnrDyqit6qUSBbkirujpw/o.jpg"
            }
        },
        {
            "id": null,
            "type": "veterinarian",
            "attributes": {
                "name": "Caring Pathways",
                "address": "Englewood, CO 80112",
                "phone": "(720) 287-2553",
                "reviews": 136,
                "rating": 5.0,
                "image": "https://s3-media4.fl.yelpcdn.com/bphoto/gep_G4SXFE7RYVmj7sO_3g/o.jpg"
            }
        }
    ]
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
- [Eric Sergeant](https://www.linkedin.com/in/ericsergeant)
- [Jessica Jones](https://www.linkedin.com/in/justjj/)
- [Joshua Benefield](https://www.linkedin.com/in/joshua-benefield-033898206/)
- [Pretty Boi Khoi](https://www.linkedin.com/in/khoifishpond/)
- [Ida Olson](https://www.linkedin.com/in/idaolson/)

![Github][Github-img]
- [Eric Sergeant](https://github.com/EricSergeant)
- [Jessica Jones](https://github.com/JeJones21)
- [Joshua Benefield](https://github.com/Jabene)
- [Pretty Boi Khoi](https://github.com/khoifishpond)
- [Ida Olson](https://github.com/idaolson)



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
