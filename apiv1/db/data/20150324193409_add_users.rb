class AddUsers < SeedMigration::Migration
  def up
    Apiv1::User.create! users
  end

  def down
    Apiv1::User.destroy_all users_without_password[]
  end
  private
  def users
    ["manager", "dockworker", "scalemaster", "logistics"].map do |role|
      {
        role: role,
        email: "#{role}@test.co",
        password: "asdf123"
      }
    end
  end
  def users_without_password
    users.map { |user| user.tap { |u| u.delete :password } }
  end
end
