module UsersHelper
  # this will return the Gravatar for the given user (Gravatar is an image)
  def gravatar_for(user)
    # hexdigest to ensure that the argument is all lower-case
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, clas: "gravatar")
  end
end
