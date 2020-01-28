import React from 'react'
import {StyleSheet,View, Text, Image, ScrollView,Button} from 'react-native'

class Step7 extends React.Component {
  render() {
    return(
      <View>
      <Button
        title="Step8"
        onPress={() => {
              this.props.navigation.navigate("Step8")
                        }
              }
      />

    </View>
    )
  }
}

export default Step7
