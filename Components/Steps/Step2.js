import React from 'react'
import {StyleSheet, View, Text,Button,Image,TouchableOpacity } from 'react-native'

class Step2 extends React.Component {
  _NextStep() {
    this.props.navigation.navigate("Step3")
   }

  render()
  {
    return(
      <View style={styles.main_container} >
        <Text style={styles.text_Title}>Quel est votre Sexe ?</Text>
        <View style={styles.gender_container}>
          <TouchableOpacity style={styles.touchMale}
          onPress={() => {this._NextStep()}}>
          <Image
              style={{width: 100, height: 100}}
              source={require('../../assets/gender-Male.jpg')}
                />
          </TouchableOpacity>
          <TouchableOpacity style={styles.touchFemale}
           onPress={() => {this._NextStep()}}>

          <Image
              style={{width: 100, height: 100}}
              source={require('../../assets/gender-Female.jpg')}
                />
          </TouchableOpacity>
        </View>

    </View>
    )
  }
}

export default Step2

const styles={
  main_container:{
    flex:1,
    backgroundColor:'black'
  },

  text_Title:{
    textAlign:'center',
    fontWeight: 'bold',
    fontSize: 25,
    color:'#C0C0C0'
  },
  gender_container:{
    flexDirection:'row',
    justifyContent:'center',
    padding:30
  },
  touchMale:{
    marginRight:30,
    backgroundColor:'blue',
  },
  touchFemale:{
    backgroundColor:'pink'
  }
}
