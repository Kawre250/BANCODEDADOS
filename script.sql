USE [master]
GO
/****** Object:  Database [Portal do Aluno]    Script Date: 26/10/2023 19:33:21 ******/
CREATE DATABASE [Portal do Aluno]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Portal do Aluno', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Portal do Aluno.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Portal do Aluno_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Portal do Aluno_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Portal do Aluno] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Portal do Aluno].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Portal do Aluno] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Portal do Aluno] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Portal do Aluno] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Portal do Aluno] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Portal do Aluno] SET ARITHABORT OFF 
GO
ALTER DATABASE [Portal do Aluno] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Portal do Aluno] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Portal do Aluno] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Portal do Aluno] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Portal do Aluno] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Portal do Aluno] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Portal do Aluno] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Portal do Aluno] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Portal do Aluno] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Portal do Aluno] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Portal do Aluno] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Portal do Aluno] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Portal do Aluno] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Portal do Aluno] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Portal do Aluno] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Portal do Aluno] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Portal do Aluno] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Portal do Aluno] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Portal do Aluno] SET  MULTI_USER 
GO
ALTER DATABASE [Portal do Aluno] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Portal do Aluno] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Portal do Aluno] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Portal do Aluno] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Portal do Aluno] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Portal do Aluno] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Portal do Aluno] SET QUERY_STORE = ON
GO
ALTER DATABASE [Portal do Aluno] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Portal do Aluno]
GO
/****** Object:  Table [dbo].[admin_id]    Script Date: 26/10/2023 19:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_id](
	[admin_id] [int] NOT NULL,
	[nomeusu_admin] [varchar](25) NOT NULL,
	[senhausu_admin] [varchar](11) NOT NULL,
	[regrecusenh_admin] [varchar](50) NOT NULL,
	[email_admin] [varchar](20) NOT NULL,
	[mtdautent_admin] [varchar](15) NOT NULL,
	[permiss_admin] [varchar](50) NOT NULL,
	[histlog_admin] [date] NOT NULL,
	[infocott_admin] [text] NOT NULL,
	[confperfil_admin] [varchar](40) NOT NULL,
	[histatv_admin] [varchar](50) NOT NULL,
	[prefnot_admin] [varchar](10) NOT NULL,
	[detal_admin] [text] NOT NULL,
	[foto_admin] [varchar](50) NOT NULL,
	[infidioma_admin] [varchar](10) NOT NULL,
	[infloca_admin] [varchar](20) NOT NULL,
	[regaut_admin] [text] NOT NULL,
	[acountvin_admin] [text] NOT NULL,
	[detaemail_admin] [text] NOT NULL,
	[regacaoadm_admin] [varchar](50) NOT NULL,
	[infconttadm_admin] [text] NOT NULL,
	[regmudanconfig_admin] [text] NOT NULL,
	[detaback_admin] [text] NOT NULL,
	[histmant_admin] [varchar](50) NOT NULL,
	[politseg_admin] [text] NOT NULL,
	[regincident_admin] [text] NOT NULL,
	[infotreinm_admin] [text] NOT NULL,
	[notnewatt_admin] [varchar](25) NOT NULL,
	[detainegra_admin] [text] NOT NULL,
	[regsolsup_admin] [text] NOT NULL,
	[dadoscontsup_admin] [varchar](10) NOT NULL,
	[histcomsoft_admin] [text] NOT NULL,
	[infocontrato_admin] [text] NOT NULL,
	[regpolitgere_admin] [text] NOT NULL,
	[regcontrata_admin] [text] NOT NULL,
	[nvpermadm_admin] [varchar](10) NOT NULL,
	[infodepto_admin] [text] NOT NULL,
	[histtreina_admin] [text] NOT NULL,
	[dataregadm_admin] [date] NOT NULL,
	[regadmreuna_admin] [varchar](50) NOT NULL,
	[dadossuper_admin] [text] NOT NULL,
	[atribu_admin] [varchar](30) NOT NULL,
	[detaremun_admin] [text] NOT NULL,
	[regdeparticipa_admin] [varchar](50) NOT NULL,
	[infoplan_admin] [text] NOT NULL,
	[dadoscnttemerg_admin] [text] NOT NULL,
	[regviagem_admin] [varchar](50) NOT NULL,
	[detaeqp_admin] [text] NOT NULL,
	[inforlicen_admin] [text] NOT NULL,
	[regpremi_admin] [text] NOT NULL,
	[feedbackdes_admin] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[anuncio_id]    Script Date: 26/10/2023 19:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anuncio_id](
	[anuncio_id] [int] NOT NULL,
	[titulo_anuncio] [text] NOT NULL,
	[conteudo_anuncio] [varchar](50) NOT NULL,
	[data_anuncio] [date] NOT NULL,
	[autor_anuncio] [varchar](50) NOT NULL,
	[categoria_anuncio] [text] NOT NULL,
	[exp_anuncio] [date] NOT NULL,
	[fonte_anuncio] [text] NOT NULL,
	[priori_anuncio] [varchar](10) NOT NULL,
	[rec_anuncio] [varchar](10) NOT NULL,
	[link_anuncio] [varchar](50) NOT NULL,
	[cntt_anuncio] [varchar](50) NOT NULL,
	[stts_anuncio] [nchar](10) NOT NULL,
	[histed_anuncio] [text] NOT NULL,
	[comemnt_anuncio] [text] NOT NULL,
	[freq_anuncio] [text] NOT NULL,
	[cliq_anuncio] [varchar](50) NOT NULL,
	[audalv_anuncio] [varchar](50) NOT NULL,
	[campnh_anuncio] [text] NOT NULL,
	[notno_anuncio] [varchar](50) NOT NULL,
	[regcomp_anuncio] [varchar](50) NOT NULL,
	[avalanunc_anuncio] [varchar](10) NOT NULL,
	[detbann_anuncio] [text] NOT NULL,
	[dadosreg_anuncio] [text] NOT NULL,
	[regarqex_anuncio] [text] NOT NULL,
	[extraan_anuncio] [text] NOT NULL,
	[detinstru_anuncio] [text] NOT NULL,
	[worksh_anuncio] [text] NOT NULL,
	[offfinan_anuncio] [text] NOT NULL,
	[empreg_anuncio] [text] NOT NULL,
	[reganvs_anuncio] [text] NOT NULL,
	[ofertnetwo_anuncio] [text] NOT NULL,
	[newal_anuncio] [text] NOT NULL,
	[notmudan_anuncio] [text] NOT NULL,
	[infoservestud_anuncio] [text] NOT NULL,
	[regcampanhas_anuncio] [text] NOT NULL,
	[anusus_anuncio] [text] NOT NULL,
	[detfilan_anuncio] [text] NOT NULL,
	[servapoioest_anuncio] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[avaliacoes_id]    Script Date: 26/10/2023 19:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[avaliacoes_id](
	[avaliacoes_id] [int] NOT NULL,
	[data_avaliacao] [date] NOT NULL,
	[hora_avaliacao] [char](4) NOT NULL,
	[nota_avaliacao] [varchar](2) NOT NULL,
	[locavalia_avaliacao] [text] NOT NULL,
	[comentário_avaliacao] [text] NOT NULL,
	[tipo_avaliacao] [varchar](10) NOT NULL,
	[pesoaval_avaliacao] [varchar](10) NOT NULL,
	[crit_avaliacao] [varchar](20) NOT NULL,
	[recursos_avaliacao] [text] NOT NULL,
	[avalform_avaliacao] [text] NOT NULL,
	[regnot_avaliacao] [text] NOT NULL,
	[histava_avaliacao] [varchar](50) NOT NULL,
	[avaparticip_avaliacao] [text] NOT NULL,
	[dadosrev_avaliacao] [varchar](50) NOT NULL,
	[avaprat_avaliacao] [varchar](20) NOT NULL,
	[regdtentrega_avaliacao] [date] NOT NULL,
	[avalgpind_avaliacao] [varbinary](25) NOT NULL,
	[reginter_avaliacao] [varchar](50) NOT NULL,
	[dadoscritar_avaliacao] [varchar](50) NOT NULL,
	[regnotor_avaliacao] [text] NOT NULL,
	[infavalport_avaliacao] [text] NOT NULL,
	[notpartconl_avaliacao] [varchar](2) NOT NULL,
	[avabasdis_avaliacao] [text] NOT NULL,
	[avahabcl_avaliacao] [text] NOT NULL,
	[avagpeqp_avaliacao] [varchar](2) NOT NULL,
	[avapesqdis_avaliacao] [varchar](2) NOT NULL,
	[avadiscau_avaliacao] [varchar](2) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[curso.id]    Script Date: 26/10/2023 19:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[curso.id](
	[cursos_id] [int] NOT NULL,
	[nome_cursos] [varchar](25) NOT NULL,
	[sobre_cursos] [text] NOT NULL,
	[planoestudo_cursos] [text] NOT NULL,
	[extradisp_cursos] [text] NOT NULL,
	[cargahr_cursos] [varchar](2) NOT NULL,
	[prerequi_cursos] [text] NOT NULL,
	[prof_cursos] [varchar](15) NOT NULL,
	[contatoprof_cursos] [text] NOT NULL,
	[datainc_cursos] [date] NOT NULL,
	[dataterm_cursos] [date] NOT NULL,
	[custo_cursos] [text] NOT NULL,
	[tipopgto_alunos] [varchar](10) NOT NULL,
	[vagasdis_cursos] [varchar](30) NOT NULL,
	[detalhes_cursos] [text] NOT NULL,
	[horarios_cursos] [time](4) NOT NULL,
	[categorias_cursos] [nchar](10) NOT NULL,
	[recursos_cursos] [nchar](10) NOT NULL,
	[materiaisdispo_cursos] [nchar](10) NOT NULL,
	[atualizacoes_cursos] [text] NOT NULL,
	[contatodepto_cursos] [nchar](10) NOT NULL,
	[avaefeedback_cursos] [text] NOT NULL,
	[andamento_cursos] [text] NOT NULL,
	[durac_cursos] [text] NOT NULL,
	[objetivos_cursos] [text] NOT NULL,
	[criteriosava_cursos] [varchar](50) NOT NULL,
	[datareuni_cursos] [date] NOT NULL,
	[leiturarecomn_cursos] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geral_alunos]    Script Date: 26/10/2023 19:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geral_alunos](
	[aluno_id] [int] NOT NULL,
	[nome_alunos] [varchar](30) NOT NULL,
	[dataNasc_alunos] [date] NOT NULL,
	[idade_alunos] [varchar](3) NOT NULL,
	[genero_alunos] [varchar](10) NOT NULL,
	[cep_alunos] [char](8) NOT NULL,
	[cpf_alunos] [char](11) NOT NULL,
	[rg_alunos] [char](7) NOT NULL,
	[endereço_alunos] [varchar](30) NOT NULL,
	[numeroendereco_alunos] [varchar](10) NOT NULL,
	[email_alunos] [varchar](19) NOT NULL,
	[telefone_alunos] [char](9) NOT NULL,
	[infopessoais_alunos] [text] NOT NULL,
	[datacadastro_alunos] [date] NOT NULL,
	[curso_alunos] [varchar](15) NOT NULL,
	[status_alunos] [varchar](8) NOT NULL,
	[histpresenc_alunos] [varchar](40) NOT NULL,
	[histfaltas_alunos] [varchar](40) NOT NULL,
	[naturalidade_alunos] [varchar](15) NOT NULL,
	[estadocivil_alunos] [varchar](10) NOT NULL,
	[nomemae_alunos] [varchar](30) NOT NULL,
	[nomepai_alunos] [varchar](30) NULL,
	[contatoemerg_alunos] [char](9) NOT NULL,
	[nomeemerg_alunos] [varchar](20) NOT NULL,
	[contatoemergll_alunos] [char](9) NULL,
	[nomeemergll_alunos] [varchar](20) NULL,
	[histcurso_alunos] [varchar](50) NOT NULL,
	[histescolar_alunos] [varchar](50) NOT NULL,
	[religião_alunos] [varchar](15) NULL,
	[etniaraca_alunos] [varchar](10) NOT NULL,
	[pcd_alunos] [text] NULL,
	[recomendmed_alunos] [text] NULL,
	[pagamentos_alunos] [varchar](50) NOT NULL,
	[atividadeextra_alunos] [text] NULL,
	[regpremios_alunos] [varchar](50) NULL,
	[histservcomn_alunos] [varchar](50) NULL,
	[autatv_alunos] [text] NULL,
	[resultesteav_alunos] [text] NULL,
	[regtransfer_alunos] [text] NULL,
	[idiomas_alunos] [varchar](30) NULL,
	[bolsa_alunos] [varchar](10) NULL,
	[regatvesport_alunos] [text] NULL,
	[regprogress_alunos] [text] NULL,
	[histusobibli_alunos] [varchar](15) NULL,
	[infmetas_alunos] [nchar](10) NULL,
	[regatvvol_alunos] [varchar](50) NULL,
	[regcomport_alunos] [text] NULL,
	[infoempreg_alunos] [text] NOT NULL,
	[regsupacad_alunos] [text] NOT NULL,
	[dadoscntt_alunos] [text] NOT NULL,
	[inforref_alunos] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matriculas_id]    Script Date: 26/10/2023 19:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matriculas_id](
	[matriculas_id] [int] NOT NULL,
	[numr_matricula] [varchar](50) NOT NULL,
	[data_matricula] [date] NOT NULL,
	[dataterm_matricula] [date] NOT NULL,
	[status_matricula] [text] NOT NULL,
	[notas_matriculas] [char](4) NOT NULL,
	[metodopgto_matricula] [varchar](10) NOT NULL,
	[statuspgto_matricula] [text] NOT NULL,
	[infbols_matricula] [text] NOT NULL,
	[infplpgto_matricula] [text] NOT NULL,
	[histpgto_matricula] [text] NOT NULL,
	[rgdatavenc_matricula] [date] NOT NULL,
	[notautvenc_matricula] [varchar](40) NOT NULL,
	[infcancela_matricula] [varchar](25) NOT NULL,
	[histresp_matricula] [text] NOT NULL,
	[detresp_matricula] [varchar](50) NOT NULL,
	[comadc_matricula] [text] NOT NULL,
	[detaorig_matricula] [text] NOT NULL,
	[detacont_matricula] [char](9) NOT NULL,
	[regtransf_matricula] [text] NOT NULL,
	[histreemb_matricula] [text] NOT NULL,
	[regsol_matricula] [varchar](50) NOT NULL,
	[detamateri_matricula] [text] NOT NULL,
	[contasuporte_matricula] [char](9) NOT NULL,
	[notprazos_matricula] [date] NOT NULL,
	[infopoli_matricula] [text] NOT NULL,
	[regsolinf_matriculas] [text] NOT NULL,
	[notsoladd_matricula] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'chave primária' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'admin_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome do usuário que utilizará o acesso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'nomeusu_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Senha do usuário.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'senhausu_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de recuperação de senha ou alteração de senha' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'regrecusenh_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E-mail utilizado pelo usuário.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'email_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Método de autenticação utilizada pelo usuário(dois fatores, token pelo numero...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'mtdautent_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'permissões (administrador, professor, aluno)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'permiss_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de login/acesso do usuario por data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'histlog_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações gerais adicionais do usuario e observações.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'infocott_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'configurações de perfil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'confperfil_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de acesso e atividade do usuário' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'histatv_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Preferências de notificação (como receber notificações)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'prefnot_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes de perfis de mídias sociais (se aplicável)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'detal_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados sobre foto de perfil dos usuários' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'foto_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nformações sobre idioma utilizado pelo usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'infidioma_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nformações sobre  localização do usuário.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'infloca_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de autorizações para acessar áreas restritas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'regaut_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados sobre contas vinculadas (por exemplo, contas de redes sociais)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'acountvin_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes sobre verificação de e-mail ou verificação de conta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'detaemail_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registro de ações administrativas (criação de contas, concessão de permissões)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'regacaoadm_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações de contato dos administradores' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'infconttadm_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de mudanças nas configurações do sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'regmudanconfig_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes de backup e recuperação de dados' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'detaback_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de atualizações de software e manutenção' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'histmant_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Políticas de segurança e conformidade administrativa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'politseg_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de incidentes de segurança e ações corretivas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'regincident_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre treinamento e desenvolvimento de administradores' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'infotreinm_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notificações de novas atualizações ou patches de segurança' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'notnewatt_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes de integrações de sistemas externos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'detainegra_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de solicitações de suporte ou assistência técnica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'regsolsup_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados de contato para suporte técnico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'dadoscontsup_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de comunicações com fornecedores de software' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'histcomsoft_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre contratos de licenciamento e acordos de serviço' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'infocontrato_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registro de políticas de gerenciamento de usuários' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'regpolitgere_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de datas de contratação e término de contrato' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'regcontrata_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nível de acesso e permissões administrativas específicas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'nvpermadm_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre departamento ou área de responsabilidade' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'infodepto_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de treinamentos e certificações de administração' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'histtreina_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de reuniões e decisões administrativas por data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'dataregadm_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de reuniões e decisões administrativas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'regadmreuna_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados sobre supervisão de equipes ou pessoal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'dadossuper_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes de remuneração e benefícios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'detaremun_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de participação em comissões ou grupos de trabalho' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'regdeparticipa_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre planos de desenvolvimento de carreira' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'infoplan_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados de contato de emergência para administradores' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'dadoscnttemerg_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de viagens ou despesas relacionadas a trabalho' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'regviagem_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes de equipamento ou recursos atribuídos a administradores' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'detaeqp_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre licenças e certificações profissionais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'inforlicen_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de prêmios ou reconhecimentos profissionais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'regpremi_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados de avaliação de desempenho e feedback' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin_id', @level2type=N'COLUMN',@level2name=N'feedbackdes_admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'chave primária' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'anuncio_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Titulo de identificação do anuncio ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'titulo_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'conteudo\situação\publicação a ser anunciado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'conteudo_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data em que a publicação está sendo anunciada.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'data_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pessoa que realizou a criação do anuncio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'autor_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de definição da publicação (por exemplo, notícias, anúncios, eventos).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'categoria_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de expiração do anúncio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'exp_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre a fonte do anúncio (quem publicou)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'fonte_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Destaque ou priorização de anúncios em destaque' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'priori_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Recursos multimídia, como imagens ou vídeos vinculados ao anúncio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'rec_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de links relacionados a anúncios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'link_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações de contato para obter mais detalhes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'cntt_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status de aprovação (pendente, aprovado, rejeitado)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'stts_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de edições ou revisões de anúncios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'histed_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes de comentários ou discussões relacionados a anúncios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'comemnt_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados sobre a frequência de exibição de anúncios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'freq_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de visualizações ou cliques em anúncios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'cliq_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre a audiência-alvo de anúncios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'audalv_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes de campanhas de marketing relacionadas a anúncios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'campnh_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notificações automáticas de novos anúncios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'notno_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de compartilhamento de anúncios em mídias sociais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'regcomp_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Avaliações ou classificações de anúncios pelos usuários' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'avalanunc_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes sobre banners ou anúncios em destaque na página inicial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'detbann_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados de registro de custos associados à promoção de anúncios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'dadosreg_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de anúncios arquivados ou excluídos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'regarqex_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Anúncios relacionados a atividades extracurriculares' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'extraan_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes sobre anúncios de recrutamento de instrutores ou pessoal acadêmico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'detinstru_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre workshops ou seminários anunciados' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'worksh_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ofertas de bolsas de estudo ou assistência financeira' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'offfinan_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Anúncios de oportunidades de estágio ou emprego' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'empreg_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de anúncios vinculados a datas especiais (feriados, aniversários)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'reganvs_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ofertas de eventos de networking ou oportunidades de carreira' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'ofertnetwo_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Anúncios de programas de orientação para novos alunos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'newal_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notificações de mudanças em políticas institucionais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'notmudan_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre serviços de suporte ao estudante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'infoservestud_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de campanhas de captação de recursos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'regcampanhas_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Anúncios de iniciativas de sustentabilidade ou responsabilidade social' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'anusus_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes de campanhas de conscientização ou filantropia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'detfilan_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Anúncios de serviços de apoio ao estudante (aconselhamento, serviços de saúde)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'anuncio_id', @level2type=N'COLUMN',@level2name=N'servapoioest_anuncio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chave primária' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'avaliacoes_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data em que está definida a avaliação.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'data_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora definida para começar e terminar avaliação (xx:xx - xx:xx)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'hora_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Resultado que a avaliacao apresentou' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'nota_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Local da avaliação (sala de aula, online, laboratório, etc.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'locavalia_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Comentário interno sobre a avaliacao' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'comentário_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de avaliação (prova, trabalho, projeto, apresentação, etc.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'tipo_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Peso da avaliação no cálculo da nota final' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'pesoaval_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Critérios de avaliação e rubricas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'crit_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Recursos permitidos durante a avaliação (calculadoras, livros, notas, etc.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'recursos_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Avaliações formativas ou somativas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'avalform_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registro de notas ponderadas ou escalas de pontuação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'regnot_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de notas e resultados das avaliações' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'histava_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Avaliações de participação em aula' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'avaparticip_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados sobre revisões ou apelações de notas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'dadosrev_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Avaliações práticas ou laboratoriais, definição' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'avaprat_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registro de datas de entrega de notas aos alunos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'regdtentrega_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Avaliações em grupo e notas individuais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'avalgpind_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de notas intermediárias ao longo do curso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'reginter_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados sobre critérios de arredondamento de notas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'dadoscritar_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de notas de apresentações orais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'regnotor_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre avaliações de portfólio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'infavalport_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notas de participação em discussões online' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'notpartconl_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Avaliações baseadas em discussões em sala de aula' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'avabasdis_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Avaliações de habilidades clínicas (para cursos na área de saúde)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'avahabcl_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Avaliações de desempenho em grupo ou em equipes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'avagpeqp_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes sobre avaliações de pesquisa ou dissertações' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'avapesqdis_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Avaliações baseadas em discussões em sala de aula' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'avaliacoes_id', @level2type=N'COLUMN',@level2name=N'avadiscau_avaliacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chave primaria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'cursos_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nomes dos Cursos disponiveis na escola' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'nome_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descrição sobre o curso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'sobre_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Planejamento do plano de estudo referente a aquele estágio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'planoestudo_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cursos disponiveis extra curriculares da escola.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'extradisp_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Carga horária dos cursos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'cargahr_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pré-requisição para realizar o curso. (Idade, notas, histórico...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'prerequi_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome completo dos professores dos cursos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'prof_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telefones corporativos dos professores dos cursos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'contatoprof_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de inicio do periodo do curso.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'datainc_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de expectativa do termino do curso.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'dataterm_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Preço do curso e taxas.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'custo_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipos de pagamentos disponiveis a serem feitos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'tipopgto_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vagas disponiveis para os cursos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'vagasdis_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes esécificos dos cursos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'detalhes_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Carga horária dos cursos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'horarios_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Categoria do tipo dos cursos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'categorias_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Recursos necessários para se inciar um curso. (Material, disponibilidade etc...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'recursos_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Materiais disponiveis que o curso te dá, para realizar as atividades e requisições.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'materiaisdispo_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre atualizações e mudanças no curso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'atualizacoes_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados de contato de departamento ou setor responsável por cada curso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'contatodepto_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Avaliações de cursos e feedback dos alunos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'avaefeedback_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de cursos concluídos ou cursos em andamento para cada aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'andamento_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Duração estimada do curso (em semanas, meses ou semestres)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'durac_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Objetivos de aprendizado para cada curso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'objetivos_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Avaliações e critérios de avaliação para cada curso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'criteriosava_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de datas de reuniões ou sessões de aula adicionais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'datareuni_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Listas de leitura recomendada para cada curso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'curso.id', @level2type=N'COLUMN',@level2name=N'leiturarecomn_cursos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chave Primária' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'aluno_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome próprio do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'nome_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de nascimento do Aluno (xx.xx.xxxx).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'dataNasc_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Idade do aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'idade_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identidade de gênero do Aluno (homem, mulher, ambos, nenhum...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'genero_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código de endereçamento postal do Aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'cep_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cadastro de Pessoa Física de registro do Aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'cpf_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registro Geral do Aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'rg_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Endereço de residência do estabelecimento do Aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'endereço_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número do estabelecimento de endereço do Aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'numeroendereco_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Endereço de E-mail que o Aluno possui dominio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'email_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telefone/celular de domínio do Aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'telefone_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações adicionais pessoais sobre o aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'infopessoais_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data de cadastro do aluno no ambiente de sistema escolar.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'datacadastro_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Curso em que o aluno foi cadastrado.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'curso_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status de atividade do aluno (Inativo, Ativo, Bloqueado...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'status_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de presença às aulas/atividades.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'histpresenc_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de faltas às atividades\aulas.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'histfaltas_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Naturalidade registrada do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'naturalidade_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado civil do aluno (casado, divorciado...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'estadocivil_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome completo da mãe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'nomemae_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome completo do pai.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'nomepai_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telefone\Celular do contato para emergência.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'contatoemerg_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome completo do contato de emergência.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'nomeemerg_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número celular\telefone secundário para emergência.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'contatoemergll_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nome completo secundário para emergência.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'nomeemergll_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de cursos realizados pelo aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'histcurso_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico completo escolar do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'histescolar_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Infomração referente a religião que o aluno possui.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'religião_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Etnia \ raça do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'etniaraca_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pessoa com deficiência?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'pcd_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Recomendamento médico ou prescrição que o aluno segue.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'recomendmed_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de pagamentos do aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'pagamentos_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Atividades extra curriculares que o aluno realizou.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'atividadeextra_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de prêmios e reconhecimentos acadêmicos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'regpremios_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de serviços comunitários realizados e praticados pelo aluno.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'histservcomn_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações de autorização para atividades fora do campus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'autatv_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Resultados de testes de avaliação educacional' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'resultesteav_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de matrícula em diferentes turmas ou turnos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'regtransfer_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Idiomas que o aluno possui conhecimento.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'idiomas_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Caso o aluno possua bolsa de estudos na escola.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'bolsa_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de atividades esportivas e atletismo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'regatvesport_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de progresso e desempenho individual em disciplinas específicas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'regprogress_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de uso de recursos da biblioteca' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'histusobibli_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre planos de carreira e metas acadêmicas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'infmetas_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de participação em atividades de voluntariado na escola' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'regatvvol_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de comportamento e disciplina' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'regcomport_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre a situação de emprego (se aplicável a estudantes mais velhos)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'infoempreg_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de pedidos de suporte acadêmico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'regsupacad_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados de contato de ex-alunos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'dadoscntt_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre refeições escolares ou programas de alimentação' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geral_alunos', @level2type=N'COLUMN',@level2name=N'inforref_alunos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chave primária' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'matriculas_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero de matricula - identificador unico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'numr_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data em que a matricula do aluno foi realizada.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'data_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data prevista  para o termino da matricula' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'dataterm_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status de ativo, inativo ou ausente, quanto ao curso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'status_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'notas e progresso do aluno no curso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'notas_matriculas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Método de pagamento sendo feito na metricula.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'metodopgto_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status de pagamento (pago, pendente, vencido)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'statuspgto_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre bolsas de estudo ou descontos aplicados à matrícula' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'infbols_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre o plano de pagamento (mensal, semestral, anual)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'infplpgto_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de pagamento (registro de todas as transações de pagamento)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'histpgto_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de datas de vencimento de mensalidades' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'rgdatavenc_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notificações automáticas de vencimento de mensalidades' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'notautvenc_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre cancelamentos de matrícula (razões, datas)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'infcancela_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de inscrição em cursos anteriores para cada aluno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'histresp_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes sobre os responsáveis financeiros pela matrícula (pais, tutores)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'detresp_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Comentários ou notas adicionais sobre a matrícula' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'comadc_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes sobre a fonte de origem da matrícula (por exemplo, campanhas de marketing)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'detaorig_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados de contato de um representante de atendimento ao cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'detacont_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de transferências entre cursos ou turmas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'regtransf_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histórico de reembolsos (se aplicável)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'histreemb_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de solicitações de transferência de cursos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'regsol_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalhes sobre a obtenção de livros didáticos ou materiais relacionados ao curso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'detamateri_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dados de contato para suporte técnico ou de TI relacionado à matrícula online' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'contasuporte_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notificações de prazos importantes relacionados à matrícula' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'notprazos_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Informações sobre a política de devolução de taxas de matrícula' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'infopoli_matricula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registros de solicitações de informações adicionais de matrícula' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'regsolinf_matriculas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notificações automáticas de confirmação de matrícula enviadas aos alunos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'matriculas_id', @level2type=N'COLUMN',@level2name=N'notsoladd_matricula'
GO
USE [master]
GO
ALTER DATABASE [Portal do Aluno] SET  READ_WRITE 
GO
