-- Modelo Relacional para Sistema ATS con IA para LTI

-- Tabla de Usuarios (base para diferentes roles)
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150) NOT NULL,
    hashed_password VARCHAR(255) NOT NULL,
    telefono VARCHAR(20),
    activo BOOLEAN DEFAULT TRUE,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ultimo_login TIMESTAMP,
    tipo_usuario ENUM('reclutador', 'gerente', 'candidato', 'admin') NOT NULL
);

-- Tabla de Reclutadores
CREATE TABLE reclutadores (
    id SERIAL PRIMARY KEY,
    id_usuario INTEGER NOT NULL REFERENCES usuarios(id) ON DELETE CASCADE,
    departamento VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100),
    CONSTRAINT uq_usuario_reclutador UNIQUE (id_usuario)
);

-- Tabla de Gerentes
CREATE TABLE gerentes (
    id SERIAL PRIMARY KEY,
    id_usuario INTEGER NOT NULL REFERENCES usuarios(id) ON DELETE CASCADE,
    departamento VARCHAR(100) NOT NULL,
    nivel VARCHAR(50),
    CONSTRAINT uq_usuario_gerente UNIQUE (id_usuario)
);

-- Tabla de Candidatos
CREATE TABLE candidatos (
    id SERIAL PRIMARY KEY,
    id_usuario INTEGER NOT NULL REFERENCES usuarios(id) ON DELETE CASCADE,
    fecha_nacimiento DATE,
    direccion VARCHAR(255),
    ciudad VARCHAR(100),
    pais VARCHAR(100),
    codigo_postal VARCHAR(20),
    disponibilidad ENUM('inmediata', '15_dias', '30_dias', 'otro'),
    pretension_salarial DECIMAL(10,2),
    fuente_reclutamiento VARCHAR(100),
    CONSTRAINT uq_usuario_candidato UNIQUE (id_usuario)
);

-- Tabla de Vacantes
CREATE TABLE vacantes (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    descripcion TEXT NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    ubicacion VARCHAR(100) NOT NULL,
    tipo_contrato ENUM('indefinido', 'temporal', 'practicas', 'proyecto') NOT NULL,
    modalidad ENUM('presencial', 'remoto', 'hibrido') NOT NULL,
    nivel_experiencia ENUM('junior', 'semi-senior', 'senior', 'lead') NOT NULL,
    rango_salarial_min DECIMAL(10,2),
    rango_salarial_max DECIMAL(10,2),
    fecha_publicacion DATE NOT NULL,
    fecha_cierre DATE,
    estado ENUM('borrador', 'publicada', 'cerrada', 'cancelada') NOT NULL DEFAULT 'borrador',
    id_reclutador INTEGER NOT NULL REFERENCES reclutadores(id) ON DELETE RESTRICT
);

-- Tabla de Candidaturas
CREATE TABLE candidaturas (
    id SERIAL PRIMARY KEY,
    id_candidato INTEGER NOT NULL REFERENCES candidatos(id) ON DELETE CASCADE,
    id_vacante INTEGER NOT NULL REFERENCES vacantes(id) ON DELETE CASCADE,
    fecha_aplicacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado ENUM('recibida', 'en_revision', 'en_proceso', 'finalista', 'rechazada', 'contratada') NOT NULL DEFAULT 'recibida',
    etapa_actual ENUM('aplicacion', 'revision_cv', 'prueba_tecnica', 'entrevista_inicial', 'entrevista_tecnica', 'entrevista_final', 'oferta', 'contratacion') NOT NULL DEFAULT 'aplicacion',
    notas TEXT,
    fecha_ultima_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT uq_candidato_vacante UNIQUE (id_candidato, id_vacante)
);

-- Tabla de Documentos
CREATE TABLE documentos (
    id SERIAL PRIMARY KEY,
    id_candidatura INTEGER NOT NULL REFERENCES candidaturas(id) ON DELETE CASCADE,
    tipo ENUM('cv', 'carta_presentacion', 'certificado', 'portfolio', 'otro') NOT NULL,
    nombre_archivo VARCHAR(255) NOT NULL,
    archivo_path VARCHAR(255) NOT NULL,
    tamano INTEGER NOT NULL,
    tipo_mime VARCHAR(100) NOT NULL,
    fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de Habilidades
CREATE TABLE habilidades (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) UNIQUE NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    descripcion TEXT
);

-- Tabla de relación entre Candidatos y Habilidades
CREATE TABLE candidato_habilidades (
    id_candidato INTEGER NOT NULL REFERENCES candidatos(id) ON DELETE CASCADE,
    id_habilidad INTEGER NOT NULL REFERENCES habilidades(id) ON DELETE CASCADE,
    nivel INTEGER NOT NULL CHECK (nivel BETWEEN 1 AND 5),
    anios_experiencia DECIMAL(4,1),
    verificado BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (id_candidato, id_habilidad)
);

-- Tabla de relación entre Vacantes y Habilidades
CREATE TABLE vacante_habilidades (
    id_vacante INTEGER NOT NULL REFERENCES vacantes(id) ON DELETE CASCADE,
    id_habilidad INTEGER NOT NULL REFERENCES habilidades(id) ON DELETE CASCADE,
    es_requerida BOOLEAN DEFAULT TRUE,
    nivel_minimo INTEGER CHECK (nivel_minimo BETWEEN 1 AND 5),
    anios_experiencia_min DECIMAL(4,1),
    peso INTEGER DEFAULT 1 CHECK (peso BETWEEN 1 AND 10),
    PRIMARY KEY (id_vacante, id_habilidad)
);

-- Tabla de Evaluaciones
CREATE TABLE evaluaciones (
    id SERIAL PRIMARY KEY,
    id_candidatura INTEGER NOT NULL REFERENCES candidaturas(id) ON DELETE CASCADE,
    tipo ENUM('entrevista', 'prueba_tecnica', 'test_personalidad', 'caso_practico', 'otro') NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    fecha_programada TIMESTAMP,
    fecha_realizacion TIMESTAMP,
    estado ENUM('pendiente', 'programada', 'realizada', 'cancelada', 'reprogramada') NOT NULL DEFAULT 'pendiente',
    duracion_minutos INTEGER,
    resultado DECIMAL(5,2)
);

-- Tabla de Entrevistas (especialización de Evaluaciones)
CREATE TABLE entrevista_evaluaciones (
    id_evaluacion INTEGER PRIMARY KEY REFERENCES evaluaciones(id) ON DELETE CASCADE,
    id_entrevistador INTEGER NOT NULL REFERENCES usuarios(id) ON DELETE RESTRICT,
    modalidad ENUM('presencial', 'telefonica', 'videollamada') NOT NULL,
    ubicacion VARCHAR(255),
    enlace_virtual VARCHAR(255)
);

-- Tabla de Pruebas (especialización de Evaluaciones)
CREATE TABLE prueba_evaluaciones (
    id_evaluacion INTEGER PRIMARY KEY REFERENCES evaluaciones(id) ON DELETE CASCADE,
    tipo_prueba ENUM('programacion', 'logica', 'conocimientos', 'personalidad', 'otro') NOT NULL,
    puntuacion_maxima INTEGER NOT NULL,
    puntuacion_minima_aprobacion INTEGER NOT NULL,
    instrucciones TEXT
);

-- Tabla de Comentarios
CREATE TABLE comentarios (
    id SERIAL PRIMARY KEY,
    id_candidatura INTEGER NOT NULL REFERENCES candidaturas(id) ON DELETE CASCADE,
    id_usuario INTEGER NOT NULL REFERENCES usuarios(id) ON DELETE CASCADE,
    contenido TEXT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    etapa_candidatura ENUM('aplicacion', 'revision_cv', 'prueba_tecnica', 'entrevista_inicial', 'entrevista_tecnica', 'entrevista_final', 'oferta', 'contratacion') NOT NULL,
    es_privado BOOLEAN DEFAULT FALSE
);

-- Tabla de Ofertas
CREATE TABLE ofertas (
    id SERIAL PRIMARY KEY,
    id_candidatura INTEGER NOT NULL REFERENCES candidaturas(id) ON DELETE CASCADE,
    salario DECIMAL(10,2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    beneficios TEXT,
    estado ENUM('borrador', 'enviada', 'aceptada', 'rechazada', 'negociacion', 'cancelada') NOT NULL DEFAULT 'borrador',
    fecha_envio TIMESTAMP,
    fecha_respuesta TIMESTAMP,
    respuesta_candidato BOOLEAN,
    CONSTRAINT uq_candidatura_oferta UNIQUE (id_candidatura)
);

-- Índices adicionales para optimizar consultas frecuentes
CREATE INDEX idx_candidaturas_estado ON candidaturas(estado);
CREATE INDEX idx_candidaturas_etapa ON candidaturas(etapa_actual);
CREATE INDEX idx_vacantes_estado ON vacantes(estado);
CREATE INDEX idx_documentos_tipo ON documentos(tipo);
CREATE INDEX idx_evaluaciones_estado ON evaluaciones(estado);
CREATE INDEX idx_ofertas_estado ON ofertas(estado);