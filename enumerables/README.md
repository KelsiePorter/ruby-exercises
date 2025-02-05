# Enums Exercises

This project introduces enumerable methods one at a time.

First it shows how one might solve a problem using `#each`, to demonstrate
that there is no magic involved. This is just plain Ruby.

Second, it demonstrates how to use a specific enumerable method to solve the exact same problem.

The exercises for a given enumerable method will reside in two separate
test suites, one for `#each` and one for the enumerable method itself.

Each test suite is built up in the following way:

1. A test that is passing, which shows the basic pattern.
2. A test where the block of the loop is missing.
3. A test where the entire loop is missing.
4. Any number of tests where all but the input data and the assertion
are missing.

This gradually transfers the responsibility to you, the learner, while still
providing examples that you can look at.

Remember that each enumerable method is first implemented in terms of `each`,
so by looking at the methods in this way, we'll gain some insight
into how each method is put together under the hood.

## Solving the Exercises

```shell
$ cd ruby-exercises/enumerables/exercises_1
```

Open up `map_pattern_spec.rb` and `map_spec.rb` in Atom, side by side:

![Set up map and map_pattern_spec side by side](/images/enumerables-setup-map.jpg)

The goal of these exercises is to help you understand enumerables, both how
they work and how they can be replicated through the use of the #each, the
basis of all enumerables.

For each method, there are two files of interest. Let's start with `map`:

1. `exercises_1/spec/map_pattern_spec.rb`
2. `exercises_1/spec/map_spec.rb`

In the `map_pattern_spec.rb` you'll find a collection of exercises which do what `map` is good at,
but they do it just with `each`. This file will give us some insight into how map works internally,
hopefully helping us gain a deeper understanding around when we might use each one.

Then, in the other file, `map_spec.rb` you'll find the same examples using `map` itself.
These examples will generally be much more concise, and will give a good demonstration
of how using the appropriate enumerable method (as opposed to doing everything with `each`)
can make our lives much easier!

### Running the Test Files

To run each example, we'll simply use the `rspec` command in combination with the
path to that file. For example to run the 2 map files above, we would use:

```
$ rspec exercises_1/spec/map_pattern_spec.rb
$ rspec exercises_1/spec/map_spec.rb
```

### Recommended Order

Consider working through the exercises in this order:

* `map`
* `select`
* `find` (aka `detect`)
* `sort_by`
* ~~`count`~~
* `reject`
* ~~`reduce`~~ (this one is tricky!)
* `any?`
* `all?`
* ~~`none?`~~
* ~~`one?`~~
* `group_by` (this one is tricky too!)
* ~~`zip`~~

You should work on the `pattern` test file in conjunction with the specific enumerable. `select_pattern_spec.rb` alongside `select_spec.rb`, etc.

__Recommended Workflow__

Here's how we recommend you work through the exercises:

* Open your text editor with two panes (left and right)
* In the left pane, open the pattern file like `map_pattern_spec.rb`
* In the right pane, open the matching file like `map_spec.rb`
* Run the `map_pattern_spec.rb` and solve the first exercise
* Run the `map_spec.rb` and solve the same exercise
* Repeat for each matching pair of exercises
