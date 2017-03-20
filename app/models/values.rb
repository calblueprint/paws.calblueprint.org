class Values
  def self.names
    ["Mission First", "Perpetual Growth", "Cherish Each Other", "Always Innovate", "Be Humble"]
  end

  def self.descriptions
    ["We as Blueprint members ultimately unify under one goal - achieving our mission. We place the interests of the people and clients we serve above our own. Our primary measure of success is the amount of positive impact we create through our work.",
     "We as Blueprint members value the academic, social, and personal growth of our peers. We constantly seek to perpetuate the cycle of learning and teaching, for our benefit and for others’. We strive to offer a helping hand in times of need and push each other to succeed.",
     "We as Blueprint members seek to cherish our time spent together. We develop meaningful relationships that extend well beyond the scope of the organization. We value each other as individuals and appreciate our differences.",
     "We as Blueprint members recognize that change is both inevitable and necessary. We are committed to innovate and emphasize effective solutions as needed in order to remain relevant - nothing is sacred. We welcome new ideas and diverse thinking.",
     "We as Blueprint members strive to remain humble, accept our imperfections, and be receptive to feedback. We approach challenges with an open mind and remember that anyone can pursue social good, not just Blueprint."]
  end

  def self.collection
    self.names.zip self.names
  end
end
