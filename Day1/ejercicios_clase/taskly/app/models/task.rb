class Task < ActiveRecord::Base
  belongs_to :user

  def as_json(options={})
    super(
      except: [:id,:created_at,:updated_at],
      methods: [],
      include: [])
  end

  def complete!
    self.completed = true
    self.save
    self
  end
end
