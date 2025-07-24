class Task < ApplicationRecord
  # 必須項目
  validates :title, presence: true, length: { maximum: 20 } #最大で20文字
  validates :start_date, presence: true
  validates :end_date, presence: true

  # 最大で500文字
  validates :memo, length: { maximum: 500 }

  # 終了日が開始日以降であること。
  validate :end_date_after_start_date


  # 開始日が終了日より後ろになっていないかどうかのチェック。
  private
  def end_date_after_start_date
    return if start_date.blank? || end_date.blank?

    if end_date < start_date
      errors.add(:end_date, "は開始日以降の日付を指定してください")
    end
  end
end
