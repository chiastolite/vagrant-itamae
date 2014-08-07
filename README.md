# vagrant-itamae

vagrant-itamae is a vagrant plugin for [Itamae](https://github.com/ryotarai/itamae)

## Example

```ruby
Vagrant.configure('2') do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision :itamae do |config|
    # recipes(String or Array)
    config.recipes = ['./recipe.rb']

    config.json = './node.json'
  end
end
```

## Installation

```ruby
vagrant plugin install vagrant-itamae
```

## Contributing

1. Fork it ( https://github.com/chiastolite/vagrant-itamae/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
