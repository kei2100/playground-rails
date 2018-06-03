import * as React from 'react'
import * as ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

import Routes from './routes'

// interface HelloProps {
//   name: string
// }
//
// const Hello: React.SFC<HelloProps> = props => (
//   <div>Hello {props.name}!</div>
// )
//
// Hello.defaultProps = {
//   name: 'David'
// }
//
// Hello.propTypes = {
//   name: PropTypes.string
// }

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <>
      <Routes />
    </>,
    document.body.appendChild(document.createElement('div')),
  )
})
