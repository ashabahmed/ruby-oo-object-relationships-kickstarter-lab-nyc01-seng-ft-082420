class Project
    attr_reader :title
    
    def initialize(title)
        @title = title
    end
    
    def pro_back
        ProjectBacker.all.select do |pb|
            pb.project == self
        end
    end
    
    def add_backer(backer)
        new_backer = ProjectBacker.new(self, backer)
    end
    
    def backers
         pro_back.map do |pro_b|
            pro_b.backer
        end
    end
end