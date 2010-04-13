# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def full_name(firstname, lastname)
    "#{firstname} #{lastname}"
  end
  
  def twitter_url(twittername)
    "http://www.twitter.com/#{twittername}"
  end
  
  def tumblr_url(tumblrname)
    "http://#{tumblrname}.tumblr.com"
  end
  
  def myspace_url(myspacename)
    "http://www.myspace.com/#{myspacename}"
  end
  
  def linkedin_url(linkedinname)
    "http://www.linkedin.com/in/#{linkedinname}"
  end
  
  def population(cityid)
    city = City.find(:first, :conditions => {:id => "#{cityid}"})
    city.people.count
  end
  
  def lurkit_url(userid)
    "http://www.lurk.it/#{userid}"
  end
end
