class Score < ActiveRecord::Base

    # DEFAULT_SCOPE
    default_scope -> { order(title: :desc) }
end
