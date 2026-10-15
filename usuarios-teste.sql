-- Usuários de teste (senhas gravadas com hash BCrypt)
-- ADMIN:  admin@vendas.com    / admin123
-- PADRAO: vendedor@vendas.com / vendedor123
-- Rodar depois que a aplicação subir pela primeira vez (a tabela usuarios é criada pelo JPA)

INSERT INTO usuarios (nome, email, senha, role) VALUES
    ('Administrador', 'admin@vendas.com', '$2a$10$b/UIhbd/GldhV5NJ9wHmLefZgaj3ZlRwPg5dwYndGuZsWg2j1dmFW', 'ADMIN'),
    ('Vendedor', 'vendedor@vendas.com', '$2a$10$PhJCy/xbPUxr2jgL0pWWee7C8.Odp/9NThGsBCQqe7i8vAkbUKDuC', 'PADRAO')
ON CONFLICT (email) DO NOTHING;
