class User
  include HTTParty
  base_uri 'ws.audioscrobbler.com/2.0/'

  attr_accessor :username, :real_name, :location, :age, :gender, :playcount

  def initialize(username, real_name, location, age, gender, playcount)
    self.username = username
    self.real_name = real_name
    self.location = location
    self.age = age
    self.gender = gender
    self.playcount = playcount
  end

  # Returns the playcount for this particular user
  def self.playcount(username)
    response = get("?method=user.getinfo&user=#{username}&api_key=e8dd87c5785f44879bede207cd63f6ea")
    # raise response.body
    if response.success?
      response = response["playcount"]
      return response
    else
      raise response.response
    end
  end

  # Find a particular user, based on his or her name
  def self.find(name)
    response = get("?method=user.getinfo&user=#{name}&api_key=e8dd87c5785f44879bede207cd63f6ea")
    if response.success?
      self.new(response["name"], response["realname"], response["country"], response["age"],
        response["gender"], response["playcount"])
    else
      # sup, response that was raised
      raise response.response
    end
  end
end
