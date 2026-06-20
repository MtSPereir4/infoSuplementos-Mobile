import { useEffect, useRef } from 'react';
import {
  Animated,
  PanResponder,
  SafeAreaView,
  StyleSheet,
  Text,
  View,
} from 'react-native';
// O Expo já inclui o pacote vector-icons por padrão
import { Ionicons } from '@expo/vector-icons';

export default function WelcomeScreen({ navigation }) {
  // Controle de animação para o indicativo de "deslizar"
  const slideAnim = useRef(new Animated.Value(0)).current;

  useEffect(() => {
    // Cria uma animação em loop de vai-e-vem para a esquerda
    Animated.loop(
      Animated.sequence([
        Animated.timing(slideAnim, {
          toValue: -15,
          duration: 800,
          useNativeDriver: true,
        }),
        Animated.timing(slideAnim, {
          toValue: 0,
          duration: 800,
          useNativeDriver: true,
        }),
      ])
    ).start();
  }, [slideAnim]);

  // Configuração do detector de gestos (Swipe)
  const panResponder = useRef(
    PanResponder.create({
      // Permite que a tela responda a toques
      onStartShouldSetPanResponder: () => true,
      onPanResponderRelease: (evt, gestureState) => {
        // Verifica se o usuário arrastou o dedo para a esquerda (dx negativo) em pelo menos 50 pixels
        if (gestureState.dx < -50) {
          // Usamos 'replace' em vez de 'navigate' para remover essa tela do histórico
          // Assim, se o usuário clicar no botão "Voltar" do celular, o app fecha em vez de voltar pra cá
          navigation.replace('Home');
        }
      },
    })
  ).current;

  return (
    <SafeAreaView style={styles.container} {...panResponder.panHandlers}>
      <View style={styles.content}>
        {/* Espaço reservado para a sua Logo e Nome */}
        <View style={styles.logoContainer}>
          {/* Você pode substituir este ícone por um componente <Image /> da sua logo real */}
          <View style={styles.iconBackground}>
            <Ionicons name="leaf-outline" size={80} color="#1f7a4d" />
          </View>
          <Text style={styles.appName}>SuppHints</Text>
          <Text style={styles.tagline}>
            A verdade sobre o seu suplemento,{'\n'}direto no seu bolso.
          </Text>
        </View>

        {/* Indicativo visual de Swipe */}
        <View style={styles.swipeContainer}>
          <Text style={styles.swipeText}>Deslize para começar</Text>
          <Animated.View style={{ transform: [{ translateX: slideAnim }] }}>
            <Ionicons name="chevron-back-outline" size={24} color="#94A3B8" />
          </Animated.View>
        </View>
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#0F172A', // Um fundo escuro e premium (Slate 900)
  },
  content: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'space-between', // Distribui a logo no centro e o aviso no rodapé
    paddingVertical: 60,
    paddingHorizontal: 24,
  },
  logoContainer: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  iconBackground: {
    backgroundColor: '#ECFDF5', // Fundo claro para contrastar com o ícone verde
    width: 140,
    height: 140,
    borderRadius: 70, // Totalmente redondo
    alignItems: 'center',
    justifyContent: 'center',
    marginBottom: 24,
    // Efeito de brilho
    shadowColor: '#1f7a4d',
    shadowOffset: { width: 0, height: 8 },
    shadowOpacity: 0.4,
    shadowRadius: 24,
    elevation: 10,
  },
  appName: {
    color: '#FFFFFF',
    fontSize: 42,
    fontWeight: '800',
    letterSpacing: -1,
    marginBottom: 12,
  },
  tagline: {
    color: '#94A3B8',
    fontSize: 18,
    textAlign: 'center',
    lineHeight: 26,
    fontWeight: '500',
  },
  swipeContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
    paddingVertical: 20,
    paddingHorizontal: 32,
    backgroundColor: '#1E293B', // Um card escuro levemente mais claro que o fundo
    borderRadius: 30,
  },
  swipeText: {
    color: '#E2E8F0',
    fontSize: 16,
    fontWeight: '600',
    letterSpacing: 0.5,
  },
});
