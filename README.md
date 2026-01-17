# shinokada/tera

## How do I install these formulae?

`brew install shinokada/tera/tera`

Or `brew tap shinokada/tera` and then `brew install tera`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "shinokada/tera"
brew "tera"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).


## Process to create brew tap

```sh
// run brew create
brew create --tap shinokada/tera https://github.com/shinokada/tera/archive/refs/tags/v0.7.1.tar.gz
```

Copy and paste `url` and `url` to `Formula/tera.rb`.

```rb
class Tera < Formula
  desc "Interactive Bash script terminal music radio player. Play your favorite radio station, CRUD your favorite lists, and explore new radio stations from your terminal. "
  homepage "https://tera.codewithshin.com/"
  url "https://github.com/shinokada/tera/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "828dc1a61b399fd2131048176b1fb36704bbed7ab7fa06383d5bab2f269c0ab9"
  license "MIT"

  depends_on "mpv"
  depends_on "jq"
  depends_on "fzf"
  depends_on "wget"
  depends_on "git"

  def install
    bin.install "tera"
    bin.install Dir["images"]
    bin.install Dir["lib"]
    prefix.install "LICENSE"
  end

  test do
    system "false"
  end
end
```

`push` to `shinokada/tera`:
```sh
git add .
git commit -m "v0.x.x"
git push -u origin main // or ggp
```