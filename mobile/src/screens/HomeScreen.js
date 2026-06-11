import { useCallback, useEffect, useState } from 'react';
import {
  ActivityIndicator,
  FlatList,
  Pressable,
  SafeAreaView,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';

import { useAuth } from '../hooks/useAuth';
import { getSupplements } from '../services/api';

function normalizeSupplement(item) {
  return {
    id: item.id || item.id_suplemento,
    name: item.name || item.nome_suplemento,
    brand: item.brand || item.marca_suplemento,
    type: item.type || item.tipo_suplemento,
    approval: item.approval || item.status_aprovacao,
    imagePath: item.imagePath || item.caminho_midia,
    details: item.details || item.detalhes_laudo,
  };
}

export default function HomeScreen({ navigation }) {
  const { user, isAuthenticated, logout } = useAuth();
  const [search, setSearch] = useState('');
  const [type, setType] = useState('');
  const [supplements, setSupplements] = useState([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  const loadSupplements = useCallback(async () => {
    try {
      setLoading(true);
      setError('');

      const data = await getSupplements({
        search: search.trim(),
        type,
      });

      const list = Array.isArray(data) ? data : data?.items || [];
      setSupplements(list.map(normalizeSupplement));
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  }, [search, type]);

  useEffect(() => {
    loadSupplements();
  }, [loadSupplements]);

  function renderSupplement({ item }) {
    return (
      <Pressable
        style={styles.card}
        onPress={() =>
          navigation.navigate('SupplementDetail', {
            supplement: item,
            supplementId: item.id,
          })
        }
      >
        <View style={styles.cardHeader}>
          <Text style={styles.cardTitle}>{item.name}</Text>
          <Text
            style={[
              styles.badge,
              item.approval === 'REPROVADO' && styles.badgeDanger,
            ]}
          >
            {item.approval || 'SEM LAUDO'}
          </Text>
        </View>
        <Text style={styles.brand}>{item.brand}</Text>
        <Text style={styles.type}>{item.type}</Text>
      </Pressable>
    );
  }

  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.header}>
        <View>
          <Text style={styles.title}>Buscar suplementos</Text>
          <Text style={styles.subtitle}>
            Consulte laudos sem precisar entrar na conta.
          </Text>
        </View>

        {isAuthenticated ? (
          <Pressable style={styles.secondaryButton} onPress={logout}>
            <Text style={styles.secondaryButtonText}>Sair</Text>
          </Pressable>
        ) : (
          <Pressable
            style={styles.secondaryButton}
            onPress={() => navigation.navigate('Login')}
          >
            <Text style={styles.secondaryButtonText}>Entrar</Text>
          </Pressable>
        )}
      </View>

      {isAuthenticated && (
        <Text style={styles.sessionText}>Olá, {user?.nome || user?.name}</Text>
      )}

      <View style={styles.searchArea}>
        <TextInput
          style={styles.input}
          placeholder="Nome ou marca do suplemento"
          value={search}
          onChangeText={setSearch}
          returnKeyType="search"
          onSubmitEditing={loadSupplements}
        />

        <View style={styles.filters}>
          <Pressable
            style={[styles.filterButton, !type && styles.filterButtonActive]}
            onPress={() => setType('')}
          >
            <Text
              style={[
                styles.filterButtonText,
                !type && styles.filterButtonTextActive,
              ]}
            >
              Todos
            </Text>
          </Pressable>
          <Pressable
            style={[
              styles.filterButton,
              type === 'CREATINA' && styles.filterButtonActive,
            ]}
            onPress={() => setType('CREATINA')}
          >
            <Text
              style={[
                styles.filterButtonText,
                type === 'CREATINA' && styles.filterButtonTextActive,
              ]}
            >
              Creatina
            </Text>
          </Pressable>
          <Pressable
            style={[
              styles.filterButton,
              type === 'WHEY_PROTEIN' && styles.filterButtonActive,
            ]}
            onPress={() => setType('WHEY_PROTEIN')}
          >
            <Text
              style={[
                styles.filterButtonText,
                type === 'WHEY_PROTEIN' && styles.filterButtonTextActive,
              ]}
            >
              Whey
            </Text>
          </Pressable>
        </View>
      </View>

      {loading ? (
        <ActivityIndicator style={styles.loading} size="large" />
      ) : (
        <FlatList
          data={supplements}
          keyExtractor={(item) => String(item.id)}
          renderItem={renderSupplement}
          contentContainerStyle={styles.list}
          ListEmptyComponent={
            <Text style={styles.emptyText}>
              {error || 'Nenhum suplemento encontrado.'}
            </Text>
          }
        />
      )}
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f4f7f5',
  },
  header: {
    alignItems: 'flex-start',
    flexDirection: 'row',
    justifyContent: 'space-between',
    padding: 20,
    gap: 12,
  },
  title: {
    color: '#17211b',
    fontSize: 26,
    fontWeight: '700',
  },
  subtitle: {
    color: '#66736b',
    fontSize: 14,
    marginTop: 4,
  },
  sessionText: {
    color: '#506056',
    fontSize: 14,
    marginBottom: 4,
    paddingHorizontal: 20,
  },
  secondaryButton: {
    borderColor: '#1f7a4d',
    borderRadius: 8,
    borderWidth: 1,
    paddingHorizontal: 14,
    paddingVertical: 9,
  },
  secondaryButtonText: {
    color: '#1f7a4d',
    fontWeight: '700',
  },
  searchArea: {
    gap: 12,
    paddingHorizontal: 20,
    paddingVertical: 12,
  },
  input: {
    backgroundColor: '#ffffff',
    borderColor: '#d8e0db',
    borderRadius: 8,
    borderWidth: 1,
    fontSize: 16,
    paddingHorizontal: 14,
    paddingVertical: 12,
  },
  filters: {
    flexDirection: 'row',
    gap: 8,
  },
  filterButton: {
    backgroundColor: '#ffffff',
    borderColor: '#d8e0db',
    borderRadius: 8,
    borderWidth: 1,
    paddingHorizontal: 12,
    paddingVertical: 9,
  },
  filterButtonActive: {
    backgroundColor: '#1f7a4d',
    borderColor: '#1f7a4d',
  },
  filterButtonText: {
    color: '#506056',
    fontWeight: '700',
  },
  filterButtonTextActive: {
    color: '#ffffff',
  },
  loading: {
    marginTop: 40,
  },
  list: {
    gap: 12,
    padding: 20,
    paddingBottom: 32,
  },
  card: {
    backgroundColor: '#ffffff',
    borderColor: '#dfe7e2',
    borderRadius: 8,
    borderWidth: 1,
    padding: 16,
  },
  cardHeader: {
    alignItems: 'flex-start',
    flexDirection: 'row',
    gap: 12,
    justifyContent: 'space-between',
  },
  cardTitle: {
    color: '#17211b',
    flex: 1,
    fontSize: 17,
    fontWeight: '700',
  },
  badge: {
    backgroundColor: '#e4f4eb',
    borderRadius: 6,
    color: '#1f7a4d',
    fontSize: 11,
    fontWeight: '700',
    overflow: 'hidden',
    paddingHorizontal: 8,
    paddingVertical: 4,
  },
  badgeDanger: {
    backgroundColor: '#fde8e4',
    color: '#b83220',
  },
  brand: {
    color: '#506056',
    fontSize: 14,
    marginTop: 8,
  },
  type: {
    color: '#77847b',
    fontSize: 13,
    marginTop: 4,
  },
  emptyText: {
    color: '#66736b',
    fontSize: 15,
    paddingTop: 32,
    textAlign: 'center',
  },
});
