---
languages: objc
tags: testing
---

##Stress Test

Testing is awesome! Testing allows us to have confidence that the code we write does what
we expect it to and will continue to do so even as we add more code and
functionality to our apps. You can make changes without fear of breaking
something!

Here's the deal. I have an idea for an app but I'm stressed because I
don't trust Apple's built-in code. I have to use stuff like `NSString`,
`NSArray`, and `NSInteger` but I won't feel comfortable until we can write some
tests to prove that these things behave how we expect them to.

So let's go through the anatomy of a test. We're going to be using the Specta
testing framework so that's why the syntax won't look exactly like objective-c.

```objc
  describe(@"inside this DESCRIBE block I'll describe a method, so I'll just put the method name in this string", ^{
      it(@"this IT block contains a test. the description in this string should say clearly and explicitly what I expect to happen",^{
         NSString *pet = @"grumpy cat";
         expect(pet).to.equal(@"grumpy cat"); 
      });
      
      it(@"this IT block contains another test. so i should probably describe that test here",^{
         expect(2 == 2).to.beTruthy();
      });
  });
```

###**Super Important**
I know we're not used to this with objective-c but do you see the empty
parentheses after the beTruthy() method call above? The compiler will not complain if you forget these, but your tests will break. Equal and beTruthy are examples of matchers- and in Specta all matchers are followed by parentheses, full or empty, end of story. So don't forget them.

###Reading
all the matchers we will use and more info on testing syntax can be found [here](https://github.com/specta/expecta) in the docs
