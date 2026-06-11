import { useState } from 'react';
import {
  ActivityIndicator,
  Pressable,
  SafeAreaView,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';

import { useAuth } from '../hooks/useAuth';
import { loginUser } from '../services/api';

export default function LoginScreen({ navigation }) {
  const { login } = useAuth();
  const [email, setEmail] = useState('');
  const [senha, setSenha] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  async function handleLogin() {
    try {
      setLoading(true);
      setError('');

      const data = await loginUser({ email, senha });
      login(data);
      navigation.navigate('Home');
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  }

  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.content}>
        <Text style={styles.title}>Entrar</Text>
        <Text style={styles.subtitle}>
          Use sua conta para favoritar suplementos.
        </Text>

        <View style={styles.form}>
          <TextInput
            autoCapitalize="none"
            keyboardType="email-address"
            placeholder="E-mail"
            style={styles.input}
            value={email}
            onChangeText={setEmail}
          />
          <TextInput
            placeholder="Senha"
            secureTextEntry
            style={styles.input}
            value={senha}
            onChangeText={setSenha}
          />

          {error ? <Text style={styles.errorText}>{error}</Text> : null}

          <Pressable
            disabled={loading}
            style={[styles.primaryButton, loading && styles.buttonDisabled]}
            onPress={handleLogin}
          >
            {loading ? (
              <ActivityIndicator color="#ffffff" />
            ) : (
              <Text style={styles.primaryButtonText}>Entrar</Text>
            )}
          </Pressable>
        </View>

        <Pressable onPress={() => navigation.navigate('Register')}>
          <Text style={styles.linkText}>Criar uma conta</Text>
        </Pressable>
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f4f7f5',
  },
  content: {
    flex: 1,
    justifyContent: 'center',
    padding: 24,
  },
  title: {
    color: '#17211b',
    fontSize: 28,
    fontWeight: '700',
  },
  subtitle: {
    color: '#66736b',
    fontSize: 15,
    marginTop: 6,
  },
  form: {
    gap: 12,
    marginTop: 28,
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
  primaryButton: {
    alignItems: 'center',
    backgroundColor: '#1f7a4d',
    borderRadius: 8,
    marginTop: 4,
    paddingVertical: 14,
  },
  buttonDisabled: {
    opacity: 0.7,
  },
  primaryButtonText: {
    color: '#ffffff',
    fontSize: 16,
    fontWeight: '700',
  },
  linkText: {
    color: '#1f7a4d',
    fontSize: 15,
    fontWeight: '700',
    marginTop: 22,
    textAlign: 'center',
  },
  errorText: {
    color: '#b83220',
    fontSize: 14,
  },
});
