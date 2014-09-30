class User
  require 'lastfm'

  def self.full_name(username)
    # first four lines are going to be one big repeat
    # until I figure out what I'm doing
    api_key = "e8dd87c5785f44879bede207cd63f6ea"
    api_secret = "7e94ed81af0c76d7a9edc31d3703fb6c"
    @lastfm = Lastfm.new(api_key, api_secret)
    info = @lastfm.user.get_info(username)
    info["realname"]
  end

  def self.playcount(username)
    # first four lines are going to be one big repeat
    # until I figure out what I'm doing
    api_key = "e8dd87c5785f44879bede207cd63f6ea"
    api_secret = "7e94ed81af0c76d7a9edc31d3703fb6c"
    @lastfm = Lastfm.new(api_key, api_secret)
    info = @lastfm.user.get_info(username)
    info["playcount"]
  end

  def self.username(username)
    info["name"]
  end

  def info
    # first four lines are going to be one big repeat
    # until I figure out what I'm doing
    api_key = "e8dd87c5785f44879bede207cd63f6ea"
    api_secret = "7e94ed81af0c76d7a9edc31d3703fb6c"
    @lastfm = Lastfm.new(api_key, api_secret)
    info = @lastfm.user.get_info(username)
  end

end
