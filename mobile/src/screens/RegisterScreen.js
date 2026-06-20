import { useState } from 'react';
import {
  ActivityIndicator,
  Pressable,
  SafeAreaView,
  StyleSheet,
  Text,
  TextInput,
  View,
  Platform,
  KeyboardAvoidingView,
} from 'react-native';

import { registerUser } from '../services/api';

export default function RegisterScreen({ navigation }) {
  const [nome, setNome] = useState('');
  const [email, setEmail] = useState('');
  const [senha, setSenha] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  async function handleRegister() {
    try {
      setLoading(true);
      setError('');

      await registerUser({ nome, email, senha });
      navigation.navigate('Login');
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  }

  return (
    <SafeAreaView style={styles.container}>
      <KeyboardAvoidingView
        style={styles.keyboardContainer}
        behavior={Platform.OS === 'ios' ? 'padding' : undefined}
      >
        <View style={styles.content}>
          <View style={styles.header}>
            <Text style={styles.title}>Criar conta</Text>
            <Text style={styles.subtitle}>
              A conta será usada para favoritos e recursos pessoais no
              SuppHints.
            </Text>
          </View>

          <View style={styles.form}>
            <TextInput
              placeholder="Seu nome"
              placeholderTextColor="#94A3B8"
              style={styles.input}
              value={nome}
              onChangeText={setNome}
            />
            <TextInput
              autoCapitalize="none"
              keyboardType="email-address"
              placeholder="Seu e-mail"
              placeholderTextColor="#94A3B8"
              style={styles.input}
              value={email}
              onChangeText={setEmail}
            />
            <TextInput
              placeholder="Sua senha"
              placeholderTextColor="#94A3B8"
              secureTextEntry
              style={styles.input}
              value={senha}
              onChangeText={setSenha}
            />

            {error ? <Text style={styles.errorText}>{error}</Text> : null}

            <Pressable
              disabled={loading}
              style={({ pressed }) => [
                styles.primaryButton,
                loading && styles.buttonDisabled,
                pressed && !loading && styles.buttonPressed,
              ]}
              onPress={handleRegister}
            >
              {loading ? (
                <ActivityIndicator color="#ffffff" size="small" />
              ) : (
                <Text style={styles.primaryButtonText}>Cadastrar</Text>
              )}
            </Pressable>
          </View>

          <View style={styles.footer}>
            <Text style={styles.footerText}>Já possui uma conta? </Text>
            <Pressable
              onPress={() => navigation.navigate('Login')}
              style={({ pressed }) => [pressed && styles.linkPressed]}
            >
              <Text style={styles.linkText}>Entrar</Text>
            </Pressable>
          </View>
        </View>
      </KeyboardAvoidingView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F8FAFC',
  },
  keyboardContainer: {
    flex: 1,
  },
  content: {
    flex: 1,
    justifyContent: 'center',
    paddingHorizontal: 28,
  },
  header: {
    marginBottom: 32,
  },
  title: {
    color: '#0F172A',
    fontSize: 32,
    fontWeight: '800',
    letterSpacing: -0.5,
  },
  subtitle: {
    color: '#64748B',
    fontSize: 16,
    marginTop: 8,
    lineHeight: 22,
  },
  form: {
    gap: 16,
  },
  input: {
    backgroundColor: '#FFFFFF',
    borderRadius: 16,
    fontSize: 16,
    paddingHorizontal: 20,
    paddingVertical: 16,
    color: '#0F172A',
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
  primaryButton: {
    alignItems: 'center',
    backgroundColor: '#1f7a4d',
    borderRadius: 16,
    marginTop: 8,
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
  footer: {
    flexDirection: 'row',
    justifyContent: 'center',
    marginTop: 32,
  },
  footerText: {
    color: '#64748B',
    fontSize: 15,
  },
  linkText: {
    color: '#1f7a4d',
    fontSize: 15,
    fontWeight: '700',
  },
  linkPressed: {
    opacity: 0.7,
  },
  errorText: {
    color: '#DC2626',
    fontSize: 14,
    fontWeight: '500',
    marginTop: -4,
    marginLeft: 4,
  },
});
