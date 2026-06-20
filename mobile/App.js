import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';

import { AuthProvider } from './src/hooks/useAuth';

// Importações das telas
import WelcomeScreen from './src/screens/WelcomeScreen'; // <-- Tela nova adicionada
import HomeScreen from './src/screens/HomeScreen';
import LoginScreen from './src/screens/LoginScreen';
import RegisterScreen from './src/screens/RegisterScreen';
import SupplementDetailScreen from './src/screens/SupplementDetailScreen';

const Stack = createNativeStackNavigator();

export default function App() {
  return (
    <AuthProvider>
      <NavigationContainer>
        <Stack.Navigator
          initialRouteName="Welcome" // <-- Define a WelcomeScreen como a primeira a abrir
          screenOptions={{
            headerTitleAlign: 'center',
            headerShadowVisible: false,
            headerTintColor: '#1f7a4d', // Deixa a setinha de voltar verde nas outras telas
          }}
        >
          {/* Tela de Abertura */}
          <Stack.Screen
            name="Welcome"
            component={WelcomeScreen}
            options={{ headerShown: false }} // Remove a barra de navegação do topo nesta tela
          />

          <Stack.Screen
            name="Home"
            component={HomeScreen}
            options={{ title: 'SuppHints' }} // Atualizei o nome para combinar com a logo
          />

          <Stack.Screen
            name="SupplementDetail"
            component={SupplementDetailScreen}
            options={{ title: 'Detalhes do Laudo' }}
          />

          <Stack.Screen
            name="Login"
            component={LoginScreen}
            options={{ title: 'Entrar' }}
          />

          <Stack.Screen
            name="Register"
            component={RegisterScreen}
            options={{ title: 'Criar conta' }}
          />
        </Stack.Navigator>
      </NavigationContainer>
    </AuthProvider>
  );
}
