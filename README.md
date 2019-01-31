# Colors
This repo contains packages that we can use for consistent color usage across
our products. This all began with a [confluence doc][1].

## Development
The current approach is to maintain a [`colors.json`][2] file that contains all
the colors our designers have laid out. Using that JSON file we can generate
the appropriate packages for whatever language we may need those colors for.
This has currently only been implemented for elm, but we may eventually
generate packages for SASS or JS.


[1]: https://esparklearning.atlassian.net/wiki/spaces/V5PD/pages/74448915?atlOrigin=eyJpIjoiMjdhZWI0MjM3ODg3NGEyYjk5NzU3ZmJkMGJhYTdlMGMiLCJwIjoiYyJ9
[2]: colors.json
