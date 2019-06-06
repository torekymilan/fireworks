import { createStackNavigator, createAppContainer } from 'react-navigation';
import { SCREEN_HOME, SCREEN_FIREWORKS } from './NavigationScreen';
import HomeScreen from '../screens/home';
import FireworksScreen from '../screens/fireworks';
import { fadeIn, fromLeft } from 'react-navigation-transitions';

const handleCustomTransition = ({ scenes }) => {
  const prevScene = scenes[scenes.length - 2];
  const nextScene = scenes[scenes.length - 1];
 
  if (prevScene
    && prevScene.route.routeName === SCREEN_HOME
    && nextScene.route.routeName === SCREEN_FIREWORKS) {
    return fadeIn();
  }
  return fromLeft();
}

const AppNavigator = createStackNavigator({
  [SCREEN_HOME]: {
    screen: HomeScreen,
    navigationOptions: { 
      header: null 
    }
  },
  [SCREEN_FIREWORKS]: {
    screen: FireworksScreen,
    navigationOptions: { 
      header: null 
    }
  },
}, {
  initialRouteName: SCREEN_HOME,
  transitionConfig: (nav) => handleCustomTransition(nav)
});

export default createAppContainer(AppNavigator);
