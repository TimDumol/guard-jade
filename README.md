guard-jade
==========

A Guard plugin to watch and compile Jade files

## Dependencies

Right now, `jade` has to be installed locally in the same directory as your
Guardfile.

## Options

* `output` [string] -- (required) directory to output compiled files in
* `exclude` [regex] -- paths to exclude
* `all_on_start` [boolean] -- whether to compile all files on startup
* `all_on_change` [boolean] -- whether to compile all files whenever a single file changes

## Example

```ruby
guard 'jade', :output => 'build', :all_on_start => true, :all_on_change => true do
  watch(%r{^src/(.+\.jade)$})
end
```

will compile files matching the regex `^src/(.+\.jade)$` and write the
compiled output in `build/\1` (e.g., `src/foo/bar.jade` goes to
`build/foo/bar.html`.


## Authors

* Tim Joseph Dumol <tim@timdumol.com>

## License

`guard-jade` is licensed under the Apache 2.0 license. Please refer to
`LICENSE` for more details.
