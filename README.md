# vagrant-itamae

vagrant-itamae is a vagrant plugin for [Itamae](https://github.com/ryotarai/itamae)

## Example

```ruby
Vagrant.configure('2') do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision :itamae do |config|
    # execute command with sudo privilege(true or false)
    config.sudo = true

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

## about Itamae plugin

vagrant-itamae does not support [itamae plugins](https://rubygems.org/search?utf8=%E2%9C%93&query=itamae-plugin).
If you want to use itamae plugins with vagrant-itamae then try to use [vagrant-multiplug](https://github.com/r7kamura/vagrant-multiplug)

## Contributing

1. Fork it ( https://github.com/chiastolite/vagrant-itamae/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
