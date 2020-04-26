These are automated UI tests for the [Help Your Neighbors](https://hackmd.io/Tm7phLAWQCyaRnKq62eILw?view) project.  
To run them, install Tagui [here](https://tagui.readthedocs.io/en/latest/setup.html) and then run `tagui .\testName.tag`.  
These tests can be run on their own, but they can also be integrated in a deployment pipeline:  
if a test fails or succeeds, it will create either a `nameError.txt` or `nameSuccess.txt` file.  
If the tests themselves no longer work, it is most likely because one of the XPaths has changed.  
See [here](https://tagui.readthedocs.io/en/latest/faq.html?highlight=xpath#how-do-i-find-the-xpath-of-a-web-element) for instructions on how to update the XPath.  
