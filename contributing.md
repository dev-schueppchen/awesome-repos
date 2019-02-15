# Contributing Guidelines

Feel free to contribute ot this project by **forking** the repository and creating a **pull request**.

## How to

1. [Fork](https://help.github.com/articles/fork-a-repo/) the repository to your profile.

**Now you have two possibilities:**  
Make maintainers work easier and ...

2. ... clone your repository fork with  
   `git clone git@github.com:yourUsername/awesome-repos`
3. Add your repo, like described below, to the [readme.md](readme.md)
4. Add your repo as sub module by using the add.sh script:  
   `bash ./scripts/add.sh category yourUsername/yourRepo`  
   *If you want to add a new category, add it to the [categories.sh](categories.sh) file.*  
   *if you are n windows, please use something like gitbash.*
5. Commit and push your local changes:  
   `git add . && git commit -m "added my repo" && git push -u origin master`
6. Check that everything is correct and create the pull request

or let maintainers do the hard work by ...

2. ... just adding your project, as described below, to the [readme.md](readme.md) file
3. Create your pull request and a maintainer will do the rest for you

## Rules

- Of course, this is an exclusive list only of creators of [our dev Discord guild](https://dc.zekro.de), so you need to be a member on the guild.
- The repository must be created from you or you need to be a top-contributor to this repository.
- The items on the list should be ordered in alphabetical order
- The format should look like following:  
   `- [my-repo](https://github.com/myUsername/my-repo) ``[usedLanguage]`` - Just here for showing an example.`
- The description must be concise, short, non-promotional and gramatically correct 

## Quality standarts

- code should be functional *(ofc)* and as documented and expected
- stable or progressing toward stable
- documentated *(wiki, concise readme, in-code-documentation, ...)*
- tests, ci, coverage and so on are appreciated

At last, every request must be reviewed by an admin member of our Discord guild before it will be merged.
