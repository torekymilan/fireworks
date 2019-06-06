import React, { Component } from 'react';
import { ImageBackground, Text, TouchableOpacity } from 'react-native';
import { SCREEN_FIREWORKS } from '../../navigation/NavigationScreen';
import styles from './styles';

class HomeScreen extends Component {
  render() {
    return (
      <ImageBackground source={require('../../assets/images/fireworks.jpg')} style={styles.container}>
        <TouchableOpacity
          onPress={() => this.props.navigation.navigate(SCREEN_FIREWORKS)}
          style={styles.button}
        >
          <Text
            style={styles.buttonText}
          >Launch Fireworks</Text>
        </TouchableOpacity>
      </ImageBackground>
    );
  }
}

export default HomeScreen;
