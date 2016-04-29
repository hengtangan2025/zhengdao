@WiazrdPatientsList = React.createClass
  render: ->
    <div className='wizard-patients-list'>
    {
      for patient in @props.data
        <a key={patient.id} className='item' href={patient.wizard_show_url}>
          <i className='icon user' />
          <i className='icon angle right' />
          <div className='content'>
            <div className='name'>{patient.name}</div>
            <div className='info'>手机号：{patient.mobile_phone}</div>
          </div>
        </a>
    }
    </div>