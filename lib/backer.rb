class Backer
    attr_reader :name
    def initialize (name)
        @name = name
    end
    
    def pro_back
        ProjectBacker.all.select do |pb|
            pb.backer == self
        end
    end
    
    def back_project(project)
        new_project = ProjectBacker.new(project, self)
    end
    
    def backed_projects
        pro_back.map do |pro_b|
            pro_b.project
        end
    end
end