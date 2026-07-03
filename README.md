blog
====

sblg blog, formerly jekyll blog, initial content ported from blogger...

* lovely icons are [Font Awesome](http://fontawesome.io)
* font is [Montserrat](https://fonts.google.com/specimen/Montserrat)


## Maintenance

    make build                     # Build jekyll project
    make post t="Title Content"    # Create a post
    deprecated:
    rake deploy               # Build, Commit, and Deploy to Github
    rake draft[title]         # Create a draft
    rake help                 # Print this list
    rake install              # Install dependencies (See Gemfile & package.json)
    rake page[title]          # Create a page
    rake publish[filepath]    # Publish a draft
    rake serve                # Build & serve jekyll project for develoment
    rake unpublish[filepath]  # Unpublish a post
