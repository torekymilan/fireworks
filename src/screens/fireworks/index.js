import React, { Component } from 'react';
import { ImageBackground } from 'react-native';
import FireworksView from '../../components/fireworksView';
import styles from './styles';

class FireworksScreen extends Component {
  render() {
    return (
      <ImageBackground source={require('../../assets/images/budapest_night.jpg')} style={styles.container}>
        <FireworksView style={styles.fireworks} />
      </ImageBackground>
    );
  }
}

export default FireworksScreen;
