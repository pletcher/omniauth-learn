OmniAuth Learn
---

This is an OmniAuth strategy for authenticating with Learn.co. Right now, it's mostly good for using the (super secret) API. 

To use it, you'll need to sign up for an OAuth2 application key and secret on the [Learn Applications Page](https://learn.co/oauth/applications).

### Basic Usage

```ruby
use OmniAuth::Builder do
  provider :learn, ENV['LEARN_KEY'], ENV['LEARN_SECRET']
end
```

### Local Usage

```ruby
provider :learn, ENV['LEARN_KEY'], ENV['LEARN_SECRET'], {       
  client_options: {
    # use the origin for your local instance of Learn.co
    site: 'http://localhost:3000',
    authorize_url: 'http://localhost:3000/oauth/authorize',
    token_url: 'http://localhost:3000/oauth/token'
  }
}
```

## License

Copyright (c) 2016 Learn.co

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

