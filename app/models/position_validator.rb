class PositionValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.present?
      record.errors[attribute] << (options[:message] || 'の選択肢が更新されています。再度選択して下さい。') unless nil != (PositionM.find_by(id: value, is_deleted: 0))
    end
  end
end
