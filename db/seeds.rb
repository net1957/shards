# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create([
              { name: 'user1' },
              { name: 'user2' }
            ])

ComdevRecord.connected_to(role: :writing, shard: :de) do
  Comment.create([
                   { message: 'de_comment1', remark: 'de_remark1' },
                   { message: 'de_comment2', remark: 'de_remark2' }
                 ])
end

ComdevRecord.connected_to(role: :writing, shard: :fr) do
  Comment.create([
                   { message: 'fr_comment1', remark: 'fr_remark1' },
                   { message: 'fr_comment2', remark: 'fr_remark2' }
                 ])
end
