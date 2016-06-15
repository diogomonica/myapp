 class Tweet < ActiveRecord::Base
   def send_tweets!
        last_tweet = Tweet.last
        users = User.all
        puts "sending tweets to #{users.count} users for #{last_tweet.last_id}"
        users.each do |user|
            via = ["https://trumpdeleteyouraccount.com", "@trumpdelete"].sample
            user.delay.tweet("@realDonaldTrump Delete your account. (via #{via}) https://twitter.com/realDonaldTrump/status/#{last_tweet.last_id}", last_tweet.last_id)
        end
   end
 end
