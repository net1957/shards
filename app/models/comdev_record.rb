class ComdevRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to shards: {
    fr: { writing: :comdev_fr },
    de: { writing: :comdev_de }
  }
end
