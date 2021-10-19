
# Guidelines to participating in [this project](README.md)
##### P.S. Thanks for contributing!!

## Pull Requests
Adhering to this process is a requirement for this project.

1. [Set Up Git](https://help.github.com/articles/set-up-git/) and prepare to participate in the project.

1. Clone the project, clone your fork,
   and configure the remotes:

   ```bash
   # Clone your fork of the repo into the current directory
   git clone https://github.com/<organization>/<project>.git
   # Navigate to the newly cloned directory
   cd <project>
   ```

1. If you cloned a while ago, get the latest changes from upstream:

   ```bash
   git checkout master
   git pull upstream master
   ```

1. Create a new topic branch (off the main project development branch) to
   contain your feature, change, or fix:

   ```bash
   git checkout -b <topic-branch-name>
   ```

1. Commit your changes in logical chunks. For any Git project, some good rules
   for commit messages are
   * the first line is commit summary, 50 characters or less,
   * followed by an empty line
   * followed by an explanation of the commit, wrapped to 72 characters.
   
   See [a note about git commit messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) for more.
   
   The first line of a commit message becomes the **title** of a pull request on
   GitHub, like the subject line of an email. Including the key info in the
   first line will help us respond faster to your pull.
   
   If your pull request has multiple commits which revise the same lines of
   code, it is better to [squash](http://davidwalsh.name/squash-commits-git)
   those commits together into one logical unit.
   
   But you don't always have to squash &mdash; it is fine for a pull request to
   contain multiple commits when there is a logical reason for the separation.
   
   When you've made changes, "stage" your changes:
   
   ```bash
   git add <filepath>
   ```

   Then commit these changes:
   
   ```bash
   git commit -m "<commit message>"
   ```

1. Push your topic branch up to your fork:

   ```bash
   git push origin <topic-branch-name>
   ```

1. [Open a Pull Request](https://help.github.com/articles/using-pull-requests/) with a clear title and description.

1. After your Pull Request is away, you might want to get yourself back onto
   `master` and delete the topic branch:

   ```bash
   git checkout master
   git branch -D <topic-branch-name>
   ```

## Example Styleguides

PRs:
 - https://blog.github.com/2015-01-21-how-to-write-the-perfect-pull-request/

Javascript:
 - https://github.com/felixge/node-style-guide
 - https://standardjs.com/

HTML:
 - https://google.github.io/styleguide/htmlcssguide.html


### Extra Credit: Git Commit Messages

* Use the present tense ("Add feature" not "Added feature")
* Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
* Limit the first line to 72 characters or less
* Reference issues and pull requests liberally after the first line
