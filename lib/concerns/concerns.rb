module Concerns

  module Findable


    def find_by_name(obj_name)
        self.all.find{|x| x.name == obj_name}
    end

    def find_or_create_by_name(obj_name)
      find_by_name(obj_name) ? find_by_name(obj_name) : create(obj_name)
    end

  end

end
