import React from 'react'

export default DragonCard = ({ name, description, image, id, atWar }) =>  (
    <div>
        <h3>{name}</h3>
        <p>{description}</p>
        <img width="100" src={image} /><br/>
        <button onClick={() => shiftDragon(id)}>{atWar ? 'Send Home' : 'Send to War'}</button>
    </div>
)