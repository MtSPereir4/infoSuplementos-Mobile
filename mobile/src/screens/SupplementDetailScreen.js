import { useState } from 'react';
import {
  Alert,
  Pressable,
  SafeAreaView,
  ScrollView,
  StyleSheet,
  Text,
  View,
  Platform,
} from 'react-native';

import { useAuth } from '../hooks/useAuth';
import { addFavorite } from '../services/api';

export default function SupplementDetailScreen({ navigation, route }) {
  const { supplement } = route.params;
  const { isAuthenticated, token } = useAuth();
  const [loadingFavorite, setLoadingFavorite] = useState(false);

  async function handleFavorite() {
    if (!isAuthenticated) {
      navigation.navigate('Login');
      return;
    }

    try {
      setLoadingFavorite(true);
      await addFavorite(supplement.id, token);
      Alert.alert(
        'Sucesso!',
        'O suplemento foi salvo na sua lista de favoritos.'
      );
    } catch (err) {
      Alert.alert('Não foi possível favoritar', err.message);
    } finally {
      setLoadingFavorite(false);
    }
  }

  // Função para definir a cor do status do laudo dinamicamente
  const isReprovado = supplement.approval === 'REPROVADO';

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView
        contentContainerStyle={styles.content}
        showsVerticalScrollIndicator={false}
      >
        <View style={styles.header}>
          <Text style={styles.title}>{supplement.name}</Text>
          <Text style={styles.brand}>{supplement.brand}</Text>
        </View>

        <View style={styles.infoGrid}>
          <View style={styles.infoBox}>
            <Text style={styles.label}>Tipo</Text>
            <Text style={styles.value}>{supplement.type || '-'}</Text>
          </View>

          <View style={styles.infoBox}>
            <Text style={styles.label}>Status do Laudo</Text>
            <Text
              style={[
                styles.value,
                isReprovado ? styles.valueDanger : styles.valueSuccess,
              ]}
            >
              {supplement.approval || 'SEM LAUDO'}
            </Text>
          </View>
        </View>

        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Detalhes do laudo</Text>
          <View style={styles.detailsCard}>
            <Text style={styles.details}>
              {supplement.details ||
                'Detalhes do laudo ainda não estão disponíveis para este suplemento.'}
            </Text>
          </View>
        </View>

        <Pressable
          disabled={loadingFavorite}
          style={({ pressed }) => [
            styles.primaryButton,
            loadingFavorite && styles.buttonDisabled,
            pressed && !loadingFavorite && styles.buttonPressed,
          ]}
          onPress={handleFavorite}
        >
          <Text style={styles.primaryButtonText}>
            {loadingFavorite ? 'Salvando...' : 'Adicionar aos favoritos'}
          </Text>
        </Pressable>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F8FAFC', // Slate 50
  },
  content: {
    paddingHorizontal: 24,
    paddingTop: 24,
    paddingBottom: 40,
  },
  header: {
    marginBottom: 28,
  },
  title: {
    color: '#0F172A',
    fontSize: 32,
    fontWeight: '800',
    letterSpacing: -0.5,
    lineHeight: 38,
  },
  brand: {
    color: '#64748B',
    fontSize: 18,
    fontWeight: '500',
    marginTop: 8,
  },
  infoGrid: {
    flexDirection: 'row',
    gap: 16,
  },
  infoBox: {
    backgroundColor: '#FFFFFF',
    borderRadius: 16,
    flex: 1,
    padding: 16,
    ...Platform.select({
      ios: {
        shadowColor: '#64748B',
        shadowOffset: { width: 0, height: 4 },
        shadowOpacity: 0.06,
        shadowRadius: 8,
      },
      android: {
        elevation: 2,
      },
    }),
  },
  label: {
    color: '#94A3B8',
    fontSize: 12,
    fontWeight: '700',
    textTransform: 'uppercase',
    letterSpacing: 0.5,
  },
  value: {
    color: '#0F172A',
    fontSize: 16,
    fontWeight: '700',
    marginTop: 8,
    textTransform: 'capitalize',
  },
  valueSuccess: {
    color: '#059669', // Verde forte
  },
  valueDanger: {
    color: '#DC2626', // Vermelho forte
  },
  section: {
    marginTop: 32,
  },
  sectionTitle: {
    color: '#0F172A',
    fontSize: 20,
    fontWeight: '700',
    marginBottom: 16,
  },
  detailsCard: {
    backgroundColor: '#FFFFFF',
    borderRadius: 20,
    padding: 20,
    ...Platform.select({
      ios: {
        shadowColor: '#64748B',
        shadowOffset: { width: 0, height: 6 },
        shadowOpacity: 0.08,
        shadowRadius: 16,
      },
      android: {
        elevation: 4,
      },
    }),
  },
  details: {
    color: '#475569',
    fontSize: 16,
    lineHeight: 26, // Aumentado para facilitar a leitura de textos longos
  },
  primaryButton: {
    alignItems: 'center',
    backgroundColor: '#1f7a4d',
    borderRadius: 16,
    marginTop: 40,
    paddingVertical: 18,
    ...Platform.select({
      ios: {
        shadowColor: '#1f7a4d',
        shadowOffset: { width: 0, height: 4 },
        shadowOpacity: 0.3,
        shadowRadius: 8,
      },
      android: {
        elevation: 4,
      },
    }),
  },
  buttonDisabled: {
    opacity: 0.7,
  },
  buttonPressed: {
    transform: [{ scale: 0.98 }],
    opacity: 0.9,
  },
  primaryButtonText: {
    color: '#ffffff',
    fontSize: 16,
    fontWeight: '700',
    letterSpacing: 0.5,
  },
});
