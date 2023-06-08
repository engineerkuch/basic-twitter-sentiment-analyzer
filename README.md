# Basic Twitter Sentiment Analyzer

Given a csv data, we used CreateML to train a model.

We were supposed to use this model for sentiment analysis on Twitter, but the Basic Tiar for Twitter APIs no longer allow Standard Search. So, on this section, I coded along until Lesson 355.
 
Here's the error response:
  [!] SwifterError(message: "HTTP Status 403: Forbidden, Response: {\"errors\":[{\"message\":\"You currently have access to a subset of Twitter API v2 endpoints and limited v1.1 endpoints (e.g. media post, oauth) only. If you need access to this endpoint, you may need a different access level. You can learn more here: https://developer.twitter.com/en/portal/product\",\"code\":453}]}
 
 
 Nonetheless, the fundamental difference between this section and the previous sections are:
    i) using CreateML to train a model;
    ii) manually dragging and embedding Swifter into our project;
        Swifter simplifies working with Twitter API. Nonetheless, the project is deprecated.
