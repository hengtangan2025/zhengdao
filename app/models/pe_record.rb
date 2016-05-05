class PeRecord
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :patient_record

  field :name # 体检大项名称
  field :conclusion # 体检大项结论
  has_many :pe_items # 体检记录条目
end