class Score < ActiveRecord::Base

    # DEFAULT_SCOPE
    default_scope -> { order('title collate "C" asc') }
end
