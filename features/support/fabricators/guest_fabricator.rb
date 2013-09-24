Fabricator(:guest) do
  email { sequence(:email) { |i| "guest#{i}@example.com" } }
end
