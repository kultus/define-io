Define.IO
======

This is the current code for my work-in-progress, *Define.IO*.

Define.IO is a recent concept of my own which is based upon a singular issue I 
have noticed in recent months (or, if I really ponder on it long enough, years)
which consists of this: the fact that tech journalism is, for all intents and purposes,
a failed industry. Often I have come to find various tech sites review a product
in a manner similar to the following:

"This [Company] notebook has very poor battery life -- approximately three hours
per full charge, and the trackpad is absolutely horrendous."

**Product score: 8.5**

Things like this make absolutely no sense to me, and based on the criticisms of
others, I'm not the only one. Tech journalists are unfortunately beneath the
stranglehold of the manufacturers; one particularly scathing review of a flagship
product, and their company might never get to review another product of their
creation ever again.

So what does Define.IO do? The general concept, although it is still currently in the
early stages, is rather simple. Taking the best elements from social news websites
such as Reddit or similar clones, it seeks to base a product's true score on the
opinions of the reviews its users submit.

Current Heroku testing/alpha available at: http://alpha.define.io/

**TODO/UPDATES (1/29/13)**

Things are (sort of) back on track!

What's being done/what must be done:

* Removed the tabs on the products page; I'll implement them later on. Not entirely
  necessary at this very second, any way.
* Link to each review's respective author added in a product's show view.
* Tests are being/need to be written.
* Must add documentation to code. Some is there, but much is missing.
* Currently there is no weighting or automated process for updating scores. This is a
  more complex thing I want to do, but essentially tie user reviews into the weight of
  a review.
* A lot of dynamic/AJAX stuff is missing.
* Add a proper admin panel.