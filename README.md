# App - Web

## Swimming Competition

The goal of this assignment is to build a basic--but comprehensive--database-driven web application.

You may work with a partner on this project, if you want to. But no groups larger than two people are allowed. If you're working in pairs, definitely read **How Pairs Work** below.

### Git

You **must** commit frequently on this project. Now that we're moving past "toy" problems, the need to be organized is huge.

Set a timer and commit your code--whatever its current state of brokenness might be--every 20 minutes. Make no exceptions. Just commit every 20 minutes and write a good message (Remember that `git commit` without the `-m "Blah"` part lets you type a longer message) that describes what you're working on at that moment.

Certainly _also_ commit any other time you feel that it's appropriate! (And restart your 20-minute timer when you do.)

You don't have to `git push` every time you commit. In fact, I suggest you _don't_, as it slows you down. Just push whenever you take a break, go to bed, or any time you want us to look at your code (Because we can't see it unless it's pushed).

### How Pairs Work

Each person in a pair should maintain their own codebase, so that everyone has their own copy of the application. If people in a pair do some work in the evening without involving the other person, then the first thing the pair does the next morning should be getting the other person caught up.

**Pairs must work as a single unit.** Pairing is not a way to split up different parts of the application and move faster. That just means each person learns half of what they need to.

Each pair should begin each day with the same understanding of the project. If a member of a pair feels that this has not happened, it is that person's responsibility to exit the pair and resume their work alone. And it's each person's responsibility to respect the unity of the pair.

So if you're the fast-mover in the pair, **do not place the burden of keeping the pair unified on the slower-moving partner.**

If you cannot commit to working as a single unit comprised of two people, then work alone.

### Getting Started

#### Installation

First, fork this repository, if you haven't already.

Then clone your fork on to your local development machine:

```zsh
cd ~/Code
git clone url_for_your_copy_of_this_assignment
```

(Note: You'll need to replace `url_for_your_copy_of_this_assignment` with the actual SSH URL for your repository, which looks something like `git@github.com:sumeetjain/web-toy__some-assignment.git`.)

That will create a folder named for the assignment in **~/Code**, and it will download the files from the repository into that folder.

Next, `cd` into that newly created folder, and run the setup script:

```zsh
cd the-newly-created-folder
bin/setup
```

(Note: You'll need to replace `the-newly-created-folder` with the actual name of the folder for your assignment.)

You won't need to run the setup script for this assignment again.

If the setup script does not return any failures or errors, you're ready to work on the assignment. Open the project folder in your code editor, and begin.

### Assignment Details

This application is used to manage a collegiate swimming competition. The administrator of the competition uses it to manage events, competitors, awards, etc.

The administrator will start by adding the competition's events.

However, competitors cannot sign up for events themselves. This is a system only for the administrator. Imagine that competitors view the list of events at home and send a signup form via postal mail to the administrator (along with their payment). Then then the administrator adds the competitor to the system and indicates which events they're signed up for.

When the administrator adds a competitor, they indicate which college/university that competitor belongs to. Each college/university belongs to a "conference" (e.g. 'East' and 'West'--or two imaginary conferences of your choosing).

After an event has occurred, the administrator enters each competitor's time for that event (e.g. they would enter that Jenny had a time of _1:51_ for the _100-meter butterfly_ event).

If all competitors' times for an event have been entered, the application can indicate who the winners are. For each event, awards are given to first, second, and third place. For now, assume that ties are not possible.

**Note:** Feel free to imagine a world where colleges are actually space stations, and the competitors are all aliens. And the events are things like "100-Parsec Space Walk". Etc. That is, you are free to flavor this application to suit your interests. But please keep it "work-safe" (whatever that might mean to you--ask if you're unsure).

---

#### Phase 0

This Phase is about getting this project set up.

Here are the specific next steps you should take immediately:

1. If you haven't already, _Fork_ this repository to make your own copy. (And clone it locally.)
2. Open your local copy in Sublime Text.
3. If you are working alone, skip to the next step. If you are working with a partner, create a new file in the project's root directory called **Partner** and type your partner's full name and their GitHub username into the file. Both partners should do this in their local copies.
4. Add a space to some file. Any file--it shouldn't matter.
5. Add, commit, and push to GitHub.
6. Now create a PR. For the title of the PR, enter your name. (If you're working as a pair, that's fine--each partner should do this step.)

Now that you have a PR, you'll use that for getting approvals and asking questions.

From this point on, each person in a pair doesn't need to submit things for approval. Just one person can do it, and that'll count for both partners.

---

#### Phase 1

##### (Part 1)

So far, this is a fairly typical/realistic presentation of a project. When someone needs software, they usually describe it in sentences like those above. Since _web development is database manipulation™_, a developer's first job is usually determining what the database schema for such an application would look like. That is, what tables would be needed to organize all of this application's information?

The **deliverable** for this Phase is a Google Sheet that shows sample data for this application--just like you did for the database design assignment from the weekend.

This needs to be approved before you begin coding. A faulty database design can lead to many days/weeks/months of lost effort. When you would like someone to take a look at your database design for this application (either for feedback or for approval), comment in your PR and include a link to your Google Sheet.

**Make sure you set the Sheet's permissions to 'public'--otherwise we won't be able to see it.**

And, as always, post a message with a link to your PR in any _help_ channel so that we know you want us to look at something.

##### (Part 2)

Once you have gotten approval for your database design, you can begin adding _create_ actions for each table. You'll achieve this by:

1. Adding code to the **db/define_schema.rb** file to create in your real database the tables you designed.
2. Adding a file to **app/models/** for _each_ table being created.
  - Remember that the model must be singular, and the table must be plural. Examples:
    - `Student` for table `students`
    - `Potato` for table `potatoes`
    - `AcademyAward` for table `academy_awards`
3. Building controllers and views that facilitate adding new rows to each table.
  - It can be helpful to create a new controller file for each table. That way, the controller actions related to--for example--adding a new student to the `students` table are all in one file (e.g. **students_controller.rb**).

Once you have accomplished this for any **two** of your tables, submit for approval. (Obviously you can submit for feedback before that.)

Progress up to this point is due Wednesday morning, but don't stay up so late getting it done that you're a zombie. Just aim for completion by then, but know that you can get help tomorrow if needed.

---