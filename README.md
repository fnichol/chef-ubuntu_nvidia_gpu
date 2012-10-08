# <a name="title"></a> chef-ubuntu_nvidia_gpu [![Build Status](https://secure.travis-ci.org/fnichol/chef-ubuntu_nvidia_gpu.png)](http://travis-ci.org/fnichol/chef-ubuntu_nvidia_gpu)

## <a name="description"></a> Description

Cookbook which installs the NVIDIA binary Xorg driver.

## <a name="usage"></a> Usage

Include `recipe[ubuntu_nvidia_gpu]` in your run_list.

## <a name="requirements"></a> Requirements

### <a name="requirements-chef"></a> Chef

Tested on 10.14.4 but newer and older version should work just
fine. File an [issue][issues] if this isn't the case.

### <a name="requirements-platform"></a> Platform

The following platforms have been tested with this cookbook, meaning that
the recipes and LWRPs run on these platforms without error:

* ubuntu (12.04)

Please [report][issues] any additional platforms so they can be added.

### <a name="requirements-cookbooks"></a> Cookbooks

There are **no** external cookbook dependencies.

## <a name="installation"></a> Installation

Depending on the situation and use case there are several ways to install
this cookbook. All the methods listed below assume a tagged version release
is the target, but omit the tags to get the head of development. A valid
Chef repository structure like the [Opscode repo][chef_repo] is also assumed.

## <a name="installation-platform"></a> From the Opscode Community Platform

To install this cookbook from the Opscode platform, use the *knife* command:

    knife cookbook site install ubuntu_nvidia_gpu

### <a name="installation-librarian"></a> Using Librarian

[Librarian-Chef][librarian] is a bundler for your Chef cookbooks.
Include a reference to the cookbook in a [Cheffile][cheffile] and run
`librarian-chef install`. To install Librarian-Chef:

    gem install librarian
    cd chef-repo
    librarian-chef init

To use the Opscode platform version:

    echo "cookbook 'ubuntu_nvidia_gpu'" >> Cheffile
    librarian-chef install

Or to reference the Git version:

    cat >> Cheffile <<END_OF_CHEFFILE
    cookbook 'ubuntu_nvidia_gpu',
      :git => 'https://github.com/fnichol/chef-ubuntu_nvidia_gpu', :ref => 'v0.1.0'
    END_OF_CHEFFILE
    librarian-chef install

### <a name="installation-kgc"></a> Using knife-github-cookbooks

The [knife-github-cookbooks][kgc] gem is a plugin for *knife* that supports
installing cookbooks directly from a GitHub repository. To install with the
plugin:

    gem install knife-github-cookbooks
    cd chef-repo
    knife cookbook github install fnichol/chef-ubuntu_nvidia_gpu/v0.1.0

### <a name="installation-tarball"></a> As a Tarball

If the cookbook needs to downloaded temporarily just to be uploaded to a Chef
Server or Opscode Hosted Chef, then a tarball installation might fit the bill:

    cd chef-repo/cookbooks
    curl -Ls https://github.com/fnichol/chef-ubuntu_nvidia_gpu/tarball/v0.1.0 | tar xfz - && \
      mv fnichol-chef-ubuntu_nvidia_gpu-* ubuntu_nvidia_gpu

### <a name="installation-gitsubmodule"></a> As a Git Submodule

A dated practice (which is discouraged) is to add cookbooks as Git
submodules. This is accomplished like so:

    cd chef-repo
    git submodule add git://github.com/fnichol/chef-ubuntu_nvidia_gpu.git cookbooks/ubuntu_nvidia_gpu
    git submodule init && git submodule update

**Note:** the head of development will be linked here, not a tagged release.

## <a name="recipes"></a> Recipes

### <a name="recipes-default"></a> default

Installs the driver packages and configures an `xorg.conf` file.

## <a name="attributes"></a> Attributes

### <a name="attributes-packages"></a> packages

An Array of packages that must be installed. The default is set based on the
platform and platform_version.

## <a name="lwrps"></a> Resources and Providers

There are **no** resources and providers in this cookbook.

## <a name="development"></a> Development

* Source hosted at [GitHub][repo]
* Report issues/Questions/Feature requests on [GitHub Issues][issues]

Pull requests are very welcome! Make sure your patches are well tested.
Ideally create a topic branch for every separate change you make.

## <a name="license"></a> License and Author

Author:: [Fletcher Nichol][fnichol] (<fnichol@nichol.ca>) [![endorse](http://api.coderwall.com/fnichol/endorsecount.png)](http://coderwall.com/fnichol)

Copyright 2010, 2011, 2012, Fletcher Nichol

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[chef_repo]:        https://github.com/opscode/chef-repo
[cheffile]:         https://github.com/applicationsonline/librarian/blob/master/lib/librarian/chef/templates/Cheffile
[kgc]:              https://github.com/websterclay/knife-github-cookbooks#readme
[librarian]:        https://github.com/applicationsonline/librarian#readme

[fnichol]:      https://github.com/fnichol
[repo]:         https://github.com/fnichol/chef-ubuntu_nvidia_gpu
[issues]:       https://github.com/fnichol/chef-ubuntu_nvidia_gpu/issues
