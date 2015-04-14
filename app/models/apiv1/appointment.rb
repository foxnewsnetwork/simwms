# == Schema Information
#
# Table name: apiv1_appointments
#
#  id                   :integer          not null, primary key
#  permalink            :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  deleted_at           :datetime
#  material_description :string(255)
#  material_permalink   :string(255)
#  company              :string(255)
#  company_permalink    :string(255)
#  notes                :text(65535)
#  fulfilled_at         :datetime
#  cancelled_at         :datetime
#  expected_at          :datetime
#  exploded_at          :datetime
#

class Apiv1::Appointment < ActiveRecord::Base
  acts_as_paranoid
  KnownStatuses = [:planned, :problem, :expected, :fulfilled, :cancelled, :vanished, :unknown]
  before_create :_make_company_permalink
  after_create :_make_permalink
  scope :relevant,
    -> { where(fulfilled_at: nil).where(cancelled_at: nil).order(expected_at: "asc") }

  scope :relevant_today,
    -> { relevant.expected_today }

  scope :expected_today,
    -> { expected_before_tomorrow.expected_after_yesterday }

  scope :expected_before_tomorrow,
    -> { where("#{self.table_name}.expected_at < ?", DateTime.now + 12.hours) }

  scope :expected_after_yesterday,
    -> { where("#{self.table_name}.expected_at > ?", DateTime.now - 12.hours) }

  scope :planned_for_future,
    -> { relevant.where("#{self.table_name}.expected_at > ?", DateTime.now + 12.hours) }

  scope :problematic,
    -> { relevant.where("#{self.table_name}.expected_at is null or #{self.table_name}.exploded_at is not null") }
    
  def ember_attributes
    {
      id: permalink,
      database_id: id,
      company_permalink: company_permalink,
      created_at: created_at,
      updated_at: updated_at,
      expected_at: expected_at,
      fulfilled_at: fulfilled_at,
      cancelled_at: cancelled_at,
      exploded_at: exploded_at,
      material_description: material_description,
      company: company,
      notes: notes,
      status: status
    }
  end

  def status
    return :fulfilled if fulfilled_at.present?
    return :cancelled if cancelled_at.present?
    return :problem if exploded_at.present? || expected_at.blank?
    return :expected if expected_within_current_work_day?
    return :vanished if expected_yesterday_or_earlier?
    return :planned if expected_tomorrow_or_later?
    :unknown
  end

  def expected_within_current_work_day?
    return false if expected_at.blank?
    DateTime.now - 4.hours < expected_at && expected_at < DateTime.now + 12.hours
  end
  def expected_yesterday_or_earlier?
    return false if expected_at.blank?
    expected_at < DateTime.now - 4.hours
  end
  def expected_tomorrow_or_later?
    return false if expected_at.blank?
    DateTime.now + 12.hours < expected_at
  end
  private
  def _make_permalink
    self.permalink ||= "#{company_permalink}-#{id}"
    save
  end
  def _make_company_permalink
    self.company_permalink ||= company.to_s.downcase.gsub(/[aeiouy]+/, "").gsub(/\s+/, "-").to_url
  end
end
