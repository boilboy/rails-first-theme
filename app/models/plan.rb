class Plan < ApplicationRecord
    validates :title, length: { maximum: 20 }, presence: true
    validates :start_at, presence: true
    validates :end_at, presence: true
    validates :schedule_memo, length: { maximum: 500 }
    
    validate :start_end_check
   
    def start_end_check
      if start_at.present? && end_at.present? && start_at > end_at
        errors.add(:end_at, "は開始日より前の日付では登録できません。")
       end
    end
end
