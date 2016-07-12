class Manager::PeDefinesController < ApplicationController
  layout 'manager'

  def index
    pe_defines = PeDefine.all.map{ |x|
      DataFormer.new(x).data
    }

    @page_name = 'manager_pe_defines'
    @component_data = {
      pe_defines: pe_defines,
      new_url: new_manager_pe_define_path
    }
    @extend_nav_data = {
      mobile_back_to: manager_path,
      current_title: '体检项目管理'
    }
  end

  def new
    @page_name = 'manager_pe_defines_new'
    @component_data = {
      submit_url: manager_pe_defines_path,
      cancel_url: manager_pe_defines_path,
      group_list_url: list_manager_fact_groups_path
    }
    @extend_nav_data = {
      mobile_back_to: manager_pe_defines_path,
      current_title: '体检项目管理'
    }
  end

  # def edit
  #   pe_define = PeDefine.find params[:id]

  #   @page_name = 'manager_pe_defines_edit'
  #   @component_data = {
  #     pe_define: DataFormer.new(pe_define).data,
  #     submit_url: manager_pe_define_path(pe_define),
  #     cancel_url: manager_pe_defines_path
  #   }
  #   @extend_nav_data = {
  #     mobile_back_to: manager_pe_defines_path,
  #     current_title: '修改诊断项'
  #   }
  # end
end
