class PaymentsController < ApplicationController
  expose(:student)
  expose(:payment, attributes: :payment_params)
  expose(:student_payment) { student.payments }

  def create
    if payment.save
      student_payment << payment
      redirect_to students_path, notice: I18n.t('shared.created', resource: 'Payment')
    else
      render :new
    end
  end

  def update
    if payment.update(payment_params)
      redirect_to report_payments_path, notice: I18n.t('shared.updated', resource: 'Payment')
    else
      render :edit
    end
  end

  def destroy
    payment.destroy
    redirect_to report_payments_path, notice: I18n.t('shared.deleted', resource: 'Peyment')
  end

  private

  def payment_params
    params.require(:payment).permit(:paid, :payment_date, student: [:student_id])
  end
end
