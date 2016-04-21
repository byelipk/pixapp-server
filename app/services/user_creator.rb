class UserCreator
  attr_reader :options, :user

  def initialize(options=Hash.new)
    @options = options
  end

  def create
    User.transaction do
      before_create
      create_user
      after_create
    end

    user
  end

  private

    def before_create
    end

    def create_user
      @user = User.create!({
        name: options[:name],
        email: options[:email]
      })
    end

    def after_create
      user.directories.create!(name: "All Files")
    end

end
