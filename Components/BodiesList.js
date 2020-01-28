// Components/BodiesList.js

import React from 'react'
import { StyleSheet, FlatList } from 'react-native'
import BodyItem from './BodyItem'

class BodiesList extends React.Component {

  constructor(props) {
    super(props)
    this.state = {
      bodies: []
    }
  }

  render() {
    return (
        <FlatList
          style={styles.list}
          data={this.props.bodies}
          keyExtractor={(item) => item.id.toString()}
          renderItem={({item}) => (<BodyItem body={item}/>)}
        />
    )
  }
}

const styles = StyleSheet.create({
  list: {
    flex: 1
  }
})

export default BodiesList
