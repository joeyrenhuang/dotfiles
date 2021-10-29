import React from 'react'
export default function WKB(props) {
  return (
    <div class="page-wkb">
      <div className="dot_line"></div>
      <pre>{ JSON.stringify(props, null, 2) }</pre>
    </div>
  )
}
