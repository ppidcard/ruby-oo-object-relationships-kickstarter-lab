class Project
    attr_accessor :title

    def initialize(title)
        self.title = title
    end

    def add_backer(backer)
        proj = ProjectBacker.new(self, backer)
        proj
    end

    def backers
        res = ProjectBacker.all.select{|pj| pj.project == self}
        res.map{|res| res.backer}
    end
end