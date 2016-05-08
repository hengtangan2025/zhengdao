@PatientRecordsQueue = React.createClass
  render: ->
    records = @props.data || []

    <div className='patient-records-queue'>
      <div className='common-item-list queue'>
      {
        if records.length == 0
          <div style={padding: '1rem'}>队列中目前没有患者</div>
      }
      {
        for record in records
          console.log record

          worker_name = if record.worker? then record.worker.name else '未指定'

          patient = record.patient || {}

          klass = new ClassName
            'record item': true
            'today': record.is_today
            'not-today': not record.is_today

          href = switch record.landing_status
            when 'NOT_HERE' then record.wizard_receive_url


          <a key={record.id} className={klass} href={href}>
            <span className='reg-number left'>{record.reg_number}</span>
            <i className='icon angle right' />

            {
              if record.landing_status == 'NOT_HERE'
                <div className='content'>
                  <div className='patient'>
                    <span>{patient.name} ({record.reg_kind_str}预约，{record.landing_status_str})</span>
                  </div>
                  <div className='status'>
                    <span>{record.time_period_str}，</span>
                    <span>指定{record.reg_worker_str}：</span>
                    <span>{record.reg_worker_name}</span>
                  </div>
                </div>
            }

          </a>
      }
      </div>
    </div>