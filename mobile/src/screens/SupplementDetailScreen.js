import { useState } from 'react';
import {
  Alert,
  Pressable,
  SafeAreaView,
  ScrollView,
  StyleSheet,
  Text,
  View,
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
      Alert.alert('Favorito adicionado', 'Suplemento salvo na sua lista.');
    } catch (err) {
      Alert.alert('Não foi possível favoritar', err.message);
    } finally {
      setLoadingFavorite(false);
    }
  }

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView contentContainerStyle={styles.content}>
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
            <Text style={styles.label}>Laudo</Text>
            <Text style={styles.value}>{supplement.approval || '-'}</Text>
          </View>
        </View>

        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Detalhes do laudo</Text>
          <Text style={styles.details}>
            {supplement.details || 'Detalhes ainda não disponíveis.'}
          </Text>
        </View>

        <Pressable
          disabled={loadingFavorite}
          style={styles.primaryButton}
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
    backgroundColor: '#f4f7f5',
  },
  content: {
    padding: 20,
    paddingBottom: 32,
  },
  header: {
    marginBottom: 20,
  },
  title: {
    color: '#17211b',
    fontSize: 26,
    fontWeight: '700',
  },
  brand: {
    color: '#506056',
    fontSize: 16,
    marginTop: 6,
  },
  infoGrid: {
    flexDirection: 'row',
    gap: 12,
  },
  infoBox: {
    backgroundColor: '#ffffff',
    borderColor: '#dfe7e2',
    borderRadius: 8,
    borderWidth: 1,
    flex: 1,
    padding: 14,
  },
  label: {
    color: '#77847b',
    fontSize: 12,
    fontWeight: '700',
    textTransform: 'uppercase',
  },
  value: {
    color: '#17211b',
    fontSize: 15,
    fontWeight: '700',
    marginTop: 6,
  },
  section: {
    marginTop: 24,
  },
  sectionTitle: {
    color: '#17211b',
    fontSize: 18,
    fontWeight: '700',
  },
  details: {
    color: '#506056',
    fontSize: 15,
    lineHeight: 22,
    marginTop: 10,
  },
  primaryButton: {
    alignItems: 'center',
    backgroundColor: '#1f7a4d',
    borderRadius: 8,
    marginTop: 28,
    paddingVertical: 14,
  },
  primaryButtonText: {
    color: '#ffffff',
    fontSize: 16,
    fontWeight: '700',
  },
});
