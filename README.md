# Name of exercise

You work for a company that syndicates activity feeds from various sites.  Each site you work with sends you:

* a json file with events
* a json file of entities that are referenced by the activity feed

Your job is to produce a feed using markdown, substituting everything in the `sentence` with names and markdown links.

For example, if you had a sentence like this:

    "{creator} added {address} to {patient}"

You might turn it into something like this:

    "[Joe Example](http://example.com/users/5) added [a home address](http://example.com/addresses/6) to [Sue Summers](http://example.com/users/5)"

Sometimes, items referenced in the activity feed get removed, and are not there.  In that case, the links will not
appear in the rendered activity feed, for example if none of those objects existed anymore, the rendered feed item
will look like this:

    "Joe Example added a home address to Sue Summers"

Each activity feed item looks like this:

    // feed items file
    [
      {
        "sentence": "{creator} added {address} to {patient}",
        "objects": {
          "creator": {
            "type": "User",
            "id": 45362,
            "text": "Joe Example"
          },
          "address": {
            "type": "Address",
            "id": 7663,
            "text": "a home address"
          },
          "patient": {
            "type": "Patient",
            "id": 1245,
            "text": "Sue Summers"
          },
        }
      }
    ]

For each object in `objects`, there *may* be a corresponding entry in another JSON file, that will look like this:

    // records file
    {
      "User": [
        {
          "id": 45362,
          "name": "Joe Example",
          "url": "http://example.com/users/45362"
        }
      ],
      "Address": [
        {
          "id": 7663,
          "address": "15 Main St",
          "url": "http://example.com/addresses/45362"
        }
      ]
    }

# Setup

* Fork
* Clone
* Turn on TravisCI for the fork by
  visiting https://travis-ci.org/profile/<github user name>, clicking the "Sync now" button
  and scrolling down to find the repository to build.
* Create a new branch for your work using `git checkout -b v1`
* Implement specs and code
* Push using `git push -u origin v1`

## Further Practice

This warmup can be completed multiple times to increase your comfort level with the material.
To work on this from scratch, you can:

1. Add an upstream remote that points to the original repo `git remote add upstream git@github.com:gSchool/text-centering.git`
1. Fetch the latest from the upstream remote using `git fetch upstream`
1. Create a new branch from the master branch of the upstream remote `git checkout -b v2 upstream/master`
1. Implement specs and code
1. Push using `git push -u origin v2`

Each time you do the exercise, create a new branch. For example the 3rd time you do the exercise the branch
name will be v3 instead of v2.
