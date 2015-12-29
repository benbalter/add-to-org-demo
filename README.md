# Add to Org Demo

*A demo app implementing the add-to-org Ruby gem*

[![Build Status](https://travis-ci.org/benbalter/add-to-org-demo.svg?branch=master)](https://travis-ci.org/benbalter/add-to-org-demo)

## Usage:

1. Fork this repository
2. Customize the validation logic in [config.ru](config.ru)
3. Optionally, customize the views in the [views folder](views) with your own templates
4. Deploy the app following [the add-to-org configuration instructions](https://github.com/benbalter/add-to-org#setup) to create the necessary credentials and set the proper environmental variables

For more information, see the [add-to-org documentation](https://github.com/benbalter/add-to-org).

## Running tests

This demo app includes an example test to confirm that your validation method works. The test lives in the `/spec` folder and will need to be customized to your app. To run the tests, run `script/cibuild`.
