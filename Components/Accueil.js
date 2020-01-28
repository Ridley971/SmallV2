import React from 'react'
import  {StyleSheet,View,Button,Image,Text,Alert, TouchableOpacity} from 'react-native'

class Accueil extends React.Component
{
  constructor(props) {
    super(props);
    this.state = {chosenDate: new Date()};

    this.setDate = this.setDate.bind(this);
    this.userName= "Le Rid";
  }

  setDate(newDate) {
    this.setState({chosenDate: newDate});
  }

  render()
  {
    return(
      <View style={styles.main_container}>
          <Text style={styles.text_Title}> Nou kontan vwèw {this.userName} !</Text>

          <TouchableOpacity onPress = {() => {this.props.navigation.navigate("Step1")}}>
              <View style = {{backgroundColor: 'red', alignItems: 'center',
                              justifyContent: 'center', borderRadius:5}}
                     >
                  <Text style = {{color: 'white'}}>Steps</Text>
              </View>
          </TouchableOpacity>
      </View>
    )
  }
}

const styles = StyleSheet.create({
  main_container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor:'black'
  },
  textinput: {
    marginLeft: 5,
    marginRight: 5,
    height: 50,
    borderColor: '#000000',
    borderWidth: 1,
    paddingLeft: 5
  },

  text_Title:{
      textAlign:'center',
      fontWeight: 'bold',
      fontSize: 25,
      padding:20,
      color:'#C0C0C0C0'
  }
})
export default Accueil
