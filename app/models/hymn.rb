class Hymn < ActiveRecord::Base

    default_scope { order('title collate "C" asc') }

end
