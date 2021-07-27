class Backer
    attr_accessor :name

    def initialize(name)
        self.name = name
    end

    def back_project(project)
        proj = ProjectBacker.new(project, self)
        proj
    end

    def backed_projects
        res = ProjectBacker.all.select{|proj| proj.backer == self}
        res.map{|pj| pj.project}
    end

end