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
  Platform,
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
        style={({ pressed }) => [
          styles.card,
          pressed && styles.cardPressed, // Efeito sutil ao clicar
        ]}
        onPress={() =>
          navigation.navigate('SupplementDetail', {
            supplement: item,
            supplementId: item.id,
          })
        }
      >
        <View style={styles.cardHeader}>
          <Text style={styles.cardTitle} numberOfLines={2}>
            {item.name}
          </Text>
          <View
            style={[
              styles.badge,
              item.approval === 'REPROVADO'
                ? styles.badgeDanger
                : styles.badgeSuccess,
            ]}
          >
            <Text
              style={[
                styles.badgeText,
                item.approval === 'REPROVADO' && styles.badgeTextDanger,
              ]}
            >
              {item.approval || 'SEM LAUDO'}
            </Text>
          </View>
        </View>
        <Text style={styles.brand}>{item.brand}</Text>
        <Text style={styles.type}>{item.type}</Text>
      </Pressable>
    );
  }

  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.header}>
        <View style={styles.headerTextContainer}>
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
          placeholder="Pesquisar por nome ou marca..."
          placeholderTextColor="#94A3B8"
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
        <ActivityIndicator
          style={styles.loading}
          size="large"
          color="#1f7a4d"
        />
      ) : (
        <FlatList
          data={supplements}
          keyExtractor={(item) => String(item.id)}
          renderItem={renderSupplement}
          contentContainerStyle={styles.list}
          showsVerticalScrollIndicator={false}
          ListEmptyComponent={
            <View style={styles.emptyContainer}>
              <Text style={styles.emptyText}>
                {error || 'Nenhum suplemento encontrado.'}
              </Text>
              <Text style={styles.emptySubText}>
                Tente ajustar os filtros ou os termos da sua pesquisa.
              </Text>
            </View>
          }
        />
      )}
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F8FAFC', // Fundo levemente mais claro e moderno (Slate 50)
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 24,
    paddingTop: 24,
    paddingBottom: 16,
  },
  headerTextContainer: {
    flex: 1,
    paddingRight: 16,
  },
  title: {
    color: '#0F172A', // Texto quase preto para mais contraste
    fontSize: 28,
    fontWeight: '800',
    letterSpacing: -0.5, // Deixa a fonte mais moderna
  },
  subtitle: {
    color: '#64748B',
    fontSize: 15,
    marginTop: 6,
    lineHeight: 20,
  },
  sessionText: {
    color: '#1f7a4d',
    fontSize: 15,
    fontWeight: '600',
    marginBottom: 8,
    paddingHorizontal: 24,
  },
  secondaryButton: {
    backgroundColor: '#EEF2FF', // Fundo sutil em vez de borda
    borderRadius: 20,
    paddingHorizontal: 16,
    paddingVertical: 10,
  },
  secondaryButtonText: {
    color: '#1f7a4d',
    fontWeight: '700',
    fontSize: 14,
  },
  searchArea: {
    gap: 16,
    paddingHorizontal: 24,
    paddingVertical: 12,
  },
  input: {
    backgroundColor: '#FFFFFF',
    borderRadius: 16,
    fontSize: 16,
    paddingHorizontal: 20,
    paddingVertical: 16,
    color: '#0F172A',
    // Sombra sutil para o input
    ...Platform.select({
      ios: {
        shadowColor: '#64748B',
        shadowOffset: { width: 0, height: 4 },
        shadowOpacity: 0.08,
        shadowRadius: 12,
      },
      android: {
        elevation: 3,
      },
    }),
  },
  filters: {
    flexDirection: 'row',
    gap: 10,
  },
  filterButton: {
    backgroundColor: '#E2E8F0', // Fundo cinza suave quando inativo (Pill)
    borderRadius: 24, // Bem arredondado
    paddingHorizontal: 18,
    paddingVertical: 10,
  },
  filterButtonActive: {
    backgroundColor: '#1f7a4d', // Verde principal
  },
  filterButtonText: {
    color: '#475569',
    fontWeight: '600',
    fontSize: 14,
  },
  filterButtonTextActive: {
    color: '#FFFFFF',
  },
  loading: {
    marginTop: 60,
  },
  list: {
    paddingHorizontal: 24,
    paddingTop: 8,
    paddingBottom: 40,
    gap: 16, // Espaçamento maior entre os cards
  },
  card: {
    backgroundColor: '#FFFFFF',
    borderRadius: 20,
    padding: 20,
    // Sombras modernas
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
  cardPressed: {
    opacity: 0.9,
    transform: [{ scale: 0.98 }], // Efeito de apertar o card
  },
  cardHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'flex-start',
    gap: 12,
    marginBottom: 8,
  },
  cardTitle: {
    color: '#0F172A',
    flex: 1,
    fontSize: 18,
    fontWeight: '700',
    lineHeight: 24,
  },
  badge: {
    borderRadius: 8,
    paddingHorizontal: 10,
    paddingVertical: 6,
    alignItems: 'center',
    justifyContent: 'center',
  },
  badgeSuccess: {
    backgroundColor: '#ECFDF5', // Verde bem claro
  },
  badgeDanger: {
    backgroundColor: '#FEF2F2', // Vermelho bem claro
  },
  badgeText: {
    color: '#059669', // Verde forte
    fontSize: 12,
    fontWeight: '800',
    textTransform: 'uppercase',
    letterSpacing: 0.5,
  },
  badgeTextDanger: {
    color: '#DC2626', // Vermelho forte
  },
  brand: {
    color: '#64748B',
    fontSize: 15,
    fontWeight: '500',
  },
  type: {
    color: '#94A3B8',
    fontSize: 13,
    marginTop: 4,
    textTransform: 'capitalize',
  },
  emptyContainer: {
    alignItems: 'center',
    justifyContent: 'center',
    paddingTop: 60,
    paddingHorizontal: 20,
  },
  emptyText: {
    color: '#0F172A',
    fontSize: 18,
    fontWeight: '600',
    textAlign: 'center',
    marginBottom: 8,
  },
  emptySubText: {
    color: '#64748B',
    fontSize: 14,
    textAlign: 'center',
    lineHeight: 20,
  },
});
