// Navigation/Navigation.js

import React from 'react'
import {StyleSheet,Image} from 'react-native'
import { createAppContainer } from 'react-navigation'
import { createStackNavigator } from 'react-navigation-stack'
import { createBottomTabNavigator } from 'react-navigation-tabs'
import Accueil from '../Components/Accueil'
import Step1 from '../Components/Steps/Step1'
import Step2 from '../Components/Steps/Step2'
import Step3 from '../Components/Steps/Step3'
import Step4 from '../Components/Steps/Step4'
import Step5 from '../Components/Steps/Step5'
import Step6 from '../Components/Steps/Step6'
import Step7 from '../Components/Steps/Step7'
import Step8 from '../Components/Steps/Step8'
import Profil from '../Components/Profil'
import Formule from '../Components/Formule'
import FormuleItem from '../Components/FormuleItem'


const StepsStackNavigator = createStackNavigator({
  Step1: { // Encore une fois j'ai mis le même nom que celui du component mais libre à vous de choisir un nom différent
    screen: Step1,
    navigationOptions: {
      title: 'Step1',
      headerTintColor: '#C0C0C0',
      headerStyle:
      {
        backgroundColor: 'black',
      }
    }
  },
  Step2: {
    screen: Step2,
    navigationOptions: {
      title: 'Step2'
    }
  },
  Step3: {
    screen: Step3,
    navigationOptions: {
      title: 'Step3'
    }
  },
  Step4: {
    screen: Step4,
    navigationOptions: {
      title: 'Step4'
    }
  },
  Step5: {
    screen: Step5,
    navigationOptions: {
      title: 'Step5'
    }
  },
  Step6: {
    screen: Step6,
    navigationOptions: {
      title: 'Step6'
    }
  },
  Step7: {
    screen: Step7,
    navigationOptions: {
      title: 'Step7'
    }
  },
  Step8: {
    screen: Step8,
    navigationOptions: {
      headerLeft:() => null
    }
  }
})

const SmallfitNavigator = createBottomTabNavigator(
  {

    Accueil: {
          screen: Accueil,
          navigationOptions: {
            tabBarIcon: () => {
              return <Image
                source={require('../assets/home.png')}
                style={styles.icon}/>
            }
          }
        },

    Profil: {
          screen: Profil,
          navigationOptions: {
            tabBarIcon: () => {
              return <Image
                source={require('../assets/profil.png')}
                style={styles.icon}/>
            }
          }
        },

    Steps: {
          screen: StepsStackNavigator
        }
  },
  {
    tabBarOptions:{
      activeBackgroundColor:'gray',
      inactiveBackgroundColor:'black',
      showIcon:true,
      backgroundColor:'black'
    }
  }
)

const styles = StyleSheet.create({
  icon: {
    width: 35,
    height: 35
  }
})

export default createAppContainer(SmallfitNavigator)
