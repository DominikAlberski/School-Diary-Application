class ReportsController < ApplicationController
  expose(:subject_items) { SubjectItem.includes(:teacher, :students) }
  expose(:payments)

  def subjects
    render :subjects
  end

  def payments
    render :payments
  end
end
