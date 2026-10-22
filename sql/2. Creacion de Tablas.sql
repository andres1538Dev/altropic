-- \\\\\\\\ ───────────────────────────────────────────────────────────────────────────────
-- 1. CREAR TABLA DE STAGING: staging.produccion_altropic ─────────────────────────────────

CREATE TABLE IF NOT EXISTS produccion_altropic (
    -- Metadatos de Auditoría e Ingesta
    id_batch_ingestion VARCHAR(64) NOT NULL,
    timestamp_registro VARCHAR(30) NOT NULL,
    
    -- Datos Operativos (Mantenidos como VARCHAR en Staging para evitar bloqueos por formato)
    fecha_operacion VARCHAR(20) NOT NULL,
    id_planta VARCHAR(20) NOT NULL,
    nombre_planta VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL,
    linea_produccion VARCHAR(30) NOT NULL,
    categoria_producto VARCHAR(50) NOT NULL,
    subcategoria_producto VARCHAR(50) NOT NULL,
    sku_producto VARCHAR(30) NOT NULL,
    nombre_producto VARCHAR(200) NOT NULL,
    costo_unitario_materia_prima VARCHAR(30) NOT NULL,
    nombre_turno VARCHAR(60) NOT NULL,
    tiempo_planificado_min VARCHAR(20) NOT NULL,
    tiempo_parada_no_planificada_min VARCHAR(20) NOT NULL,
    causa_principal_parada VARCHAR(120) NOT NULL,
    ciclo_teorico_seg VARCHAR(30) NOT NULL,
    unidades_totales_producidas VARCHAR(30) NOT NULL,
    unidades_defectuosas_merma VARCHAR(30) NOT NULL,
    unidades_conformes VARCHAR(30) NOT NULL,
    temperatura_promedio_ambiente_c VARCHAR(30) NOT NULL,
    presion_sellado_psi VARCHAR(30) NOT NULL
);