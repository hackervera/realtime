module SessionUser
  def session_user
    user.new(email: "test@example.com")
  end
end
