class shout < AppplicationRecord
    validate :content, :presence: true
end
