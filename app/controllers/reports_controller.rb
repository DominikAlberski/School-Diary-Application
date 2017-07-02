class ReportsController < ApplicationController
  expose(:subject_items) { SubjectItem.includes(:teacher, :students) }

  def subjects
    render :subjects
  end

  def payments
    @payments = Payment.all
    render :payments
  end
end
