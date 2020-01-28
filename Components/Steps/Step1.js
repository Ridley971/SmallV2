import React from 'react'
import {StyleSheet, View, Text,Button,TouchableOpacity,SafeAreaView } from 'react-native'

class Step1 extends React.Component {

  _NextStep() {
    this.props.navigation.navigate("Step2")
   }

  render() {
    return(
      <SafeAreaView style={styles.main_container}>
      <View style={styles.main_container}>

            <Text style={styles.text_Title}>Quel est votre objectif ?</Text>
            <View style={styles.obj_container} >
                  <TouchableOpacity
                    style={styles.touchOp}
                    onPress={() => {this.props.navigation.navigate("Step2")}}>
                    <Text style={styles.text_Obj}>Bruler de la graisse</Text>
                    <Text style={styles.text_Desc}>Me tonifier et Mincir</Text>
                  </TouchableOpacity>

                  <TouchableOpacity
                    style={styles.touchOp}
                    onPress={() => {this._NextStep()}}>
                    <Text style={styles.text_Obj}>Être en bonne santé</Text>
                    <Text style={styles.text_Desc}>Vivre sainement</Text>
                  </TouchableOpacity>

                  <TouchableOpacity
                    style={styles.touchOp}
                    onPress={() => {this._NextStep()}}>
                    <Text style={styles.text_Obj}>Prendre du muscle</Text>
                    <Text style={styles.text_Desc}>Gagner de la masse musculaire & force</Text>
                  </TouchableOpacity>
            </View>
            <Text style={styles.text_Info}>*Sur tous vos ANTREMAN le CARDIO et les ABDOMINAUX travailés; quelque soit
            l'objectif
            </Text>

    </View>
    </SafeAreaView>
    )
  }
}

const styles = StyleSheet.create({
  main_container: {
    flex: 1,
    paddingHorizontal:10,
    backgroundColor:'black'
  },

obj_container:{
  flex:10
},

touchOp:{
  marginBottom:80,
  borderColor:'#A9A9A9',
  backgroundColor:'#DCBD10',
  borderWidth:3,
  borderRadius:35,
  padding:20

},

  text_Title: {
    textAlign:'center',
    fontWeight: 'bold',
    fontSize: 25,
    color: '#8A8985'
  },

  text_Obj:{
    textAlign:'center',
    fontWeight: 'bold',
    fontSize: 20,
    color: '#8A8985'

  },

  text_Desc:{
    textAlign:'center',
    color:'#8A8985',
    fontSize: 20
  },

  text_Info:{
  textAlign:'center',
  color: 'red',
  flex:2
  }
})


export default Step1
