// Esse documento foi feito para ser uma reconstrução ipsis literis do estatuto original do CACC-UFPA, em PDF.
// O presente código fonte NÃO subsititui o documento original do estatuto e NÃO foi referendado pela diretoria do CACC para ter qualquer efeito formal no momento.
// Erros de conteúdo podem ter sido cometidos durante a transcrição do texto original.
// Alguns poucos erros de digitação do original foram corrigidos. Por exemplo, alíneas e parágrafos com numeração repetida.
// Engenharia reversa foi usada para configurar o estilo neste código fonte. Por engenharia reversa, entenda-se principalmente observação a olho nú e, eventualmente, medidas tomadas no Libreoffice Draw.
// Valores de margens e espaçamentos foram escolhidos para melhor se parecer com o original, mas, ainda assim, o resultado obtido não é idêntico. No entanto, considera-se parecido o suficiente para um ponto de partida.
// O tamanho da fonte mensurado foi de 11.5pt. A fonte escolhida foi a Liberation Serif, uma fonte com licensa de uso permissiva que é metricamente similar à usada no original, a Times New Roman, cujo uso é restrito devido a restrições de copyright pela Microsoft.

// Configuração geral.

#set page(
	paper: "a4",
	margin: (top: 2.4cm, bottom: 2.5cm, left: 3cm, right: 2.75cm),
	header: align(right)[
		_*Aviso:* esse documento *não* deve ser tomado como verídico._

		_#link("https://github.com/cacc-ufpa/.github/issues/3")_
	]
)

#set text(
	font: "Liberation Serif",
	size: 11.5pt,
	lang: "pt",
	region: "BR"
)

#set par(
	justify: true,
	spacing: 1.75em,
	leading: 0.5em
)

#set enum(numbering: "a)", tight: false, body-indent: 0.25em)

// Configuração de capítulos.

#set heading(numbering: "I")
#show heading.where(level: 1): it => {
	text(size: 11.5pt, weight: "regular")[
		Capítulo #counter(heading).display() – #it.body
	]
}

// Configuração de artigos e seus parágrafos.

#let art-count = counter("article")
#let art(caput: [Caput], ..paragraphs) = {
	let pars = paragraphs.pos()
	art-count.step()
	[
		#context {
			let num = art-count.get().first()
			let prefix = if num <= 9 [Art. #num;º – ] else [Art. #num – ]
			prefix + caput
		}
		#if pars.len() == 1 [
			#parbreak();Parágrafo único – #pars.at(0)
		] else if pars.len() > 1 [
			#parbreak()
			#for (i, p) in pars.enumerate() [
				Parágrafo #(i+1)º – #p#parbreak()
			]
		]
	]
}

// Estatuto.

#set par(spacing: 0.5em)

#align(center)[
	UNIVERSIDADE FEDERAL DO PARÁ

	INSTITUTO DE CIÊNCIAS EXATAS E NATURAIS

	FACULDADE DE COMPUTAÇÃO

	CENTRO ACADÊMICO DE CIÊNCIA DA COMPUTAÇÃO

	#v(1.25em)

	ESTATUTO
]

= Nome, Sede e Fins

#set par(spacing: 1.5em)

#art(caput: [O Centro Acadêmico de Ciência da Computação (CACC), com sede na Cidade Universitária Professor José Silveira Neto, da Universidade Federal do Pará (UFPA), é órgão de participação do corpo discente do Curso de Ciência da Computação.])

#art(
	caput: [
		O CACC tem os seguintes fins:
		+ Patrocinar os interesses do corpo discente;
		+ Visar pelo aprimoramento do nível de ensino, pesquisa e extensão no curso de Ciência da Computação da Universidade Federal do Pará;
		+ Promover a aproximação e a solidariedade entre os corpos discente, docente e técnico administrativo;
		+ Preservar a integridade da vida escolar, o patrimônio e material da Faculdade e harmonia e cooperação entre os diferentes órgãos de administração escolar;
		+ Organizar reuniões e certames de caráter, cívico, social, cultural, científico, técnico, artístico e desportivo, visando à complementação e ao aprimoramento da formação universitária;
		+ Realizar o intercâmbio e colaboração com entidades congêneres;
		+ Aplicar-se ao estudo da realidade brasileira em busca do aprimoramento das instituições democráticas e do desenvolvimento econômico e social do Brasil, e;
		+ Concorrer, no âmbito de suas atividades, para observância dos direitos fundamentais da pessoa humana.
	],
	[ao CACC é vedado exercer atividades ou fazer propaganda de caráter religioso, político-partidário, racial ou de quaisquer outras manifestações sectárias.]
)

= Organização e Atribuições

#art(
	caput: [
		O CACC terá suas atividades administradas por uma Coordenação Geral divida em:
		+ Diretoria Executiva; e
		+ Diretorias Integradas.
	],
	[
		A Diretoria Executiva é composta pelos seguintes cargos:
		+ Presidente;
		+ Vice-Presidente;
		+ Secretário-Geral;
		+ I Secretário;
		+ Tesoureiro Geral;
		+ I Tesoureiro; e
		+ Suplente.
	],
	[
		As Diretorias Integradas são:
		+ Diretoria de Planejamento;
		+ Diretoria de Cultura e Lazer;
		+ Diretoria de Comunicação;
		+ Diretoria de Design; e
		+ Diretoria de Ouvidoria.
	],
	[Cada Diretoria Integrada poderá ser exercida por no máximo duas pessoas.],
	[Entende-se por associados todos os alunos regularmente matriculados no curso de Bacharelado em Ciência da Computação da Universidade Federal do Pará.],
	[Os delegados, alunos responsáveis pela representação do curso em congressos ou outros eventos, são em número proporcional à quantidade de associados do CACC.]
)

#art(
	caput: [
		São atribuições das Diretorias:
		+ Traçar as diretrizes do plano e ação anual do CACC;
		+ Reunir-se pelo menos uma vez ao mês;
		+ Reunir-se em caráter extraordinário, sempre que necessário, através de convocação do Presidente;
		+ Executar ou fazer executar as suas decisões;
		+ Zelar pela estrita observância deste regimento;
		+ Elaborar anualmente um relatório de prestação de contas do CACC;
		+ Orientar a ação estudantil de acordo com este Regimento;
		+ Tomar as decisões necessárias, observando as alíneas anteriores, para executar o plano anual; e
		+ Criar comissões ou grupos de trabalho, com prazo determinado e funções específicas, para melhor desempenho de suas atividades.
	],
	[
		São atribuições do Presidente:
		+ Coordenar, superintender e fiscalizar as atividades do CACC;
		+ Convocar e presidir as reuniões do CACC;
		+ Representar o CACC, em juízo ou fora dele;
		+ Visar, juntamente com o Tesoureiro, toda a escrituração do CACC;
		+ Autorizar as despesas a serem feitas pelo CACC, obedecendo as normas desse Regimento; e
		+ Assinar, juntamente com o Secretário, toda a correspondência do CACC.
	],
	[
		São atribuições do Vice-Presidente:
		+ Substituir o Presidente em caso de impedimento ou afastamento e sucedê-lo no caso de ser solicitado, e:
		+ Auxiliar o Presidente no desempenho de suas funções.
	],
	[
		São atribuições do Secretário Geral:
		+ Organizar e dirigir a Secretaria do CACC;
		+ Redigir o expediente do CACC, assinando-o juntamente com o Presidente;
		+ Substituir o Vice-Presidente em caso de sua ausência ou impedimento temporário;
		+ Secretariar todas as reuniões, lavrar as atas e assiná-las juntamente com o Presidente; e
		+ Preparar relatório anual da gestão administrativa, submetendo-o à aprovação da Diretoria.
	],
	[
		São atribuições do I Secretário:
		+ Substituir o Secretário Geral em caso de impedimento ou afastamento e sucedê-lo no caso de ser solicitado; e
		+ Auxiliar o Secretário Geral no desempenho de suas funções.
	],
	[
		São atribuições do Tesoureiro Geral:
		+ Responder pela guarda dos valores pertencentes ao CACC;
		+ Assinar com o Presidente os documentos de recebimento de auxílio e de subvenções dos poderes públicos e de outras origens;
		+ Manter em instituição financeira o dinheiro pertencente ao CACC;
		+ Assinar com o Presidente comprovantes da movimentação das contas perante a instituição financeira;
		+ Responder pela Contabilidade, mantendo em dia e sob custódia os livros de escrituração;
		+ Preparar e submeter à apreciação da Diretoria os balancetes mensais, assim como, o relatório e as contas da gestão financeira; e
		+ Cooperar com os demais Diretores e fornecer ao Secretário os dados necessários à organização do relatório anual.
	],
	[
		São atribuições do I Tesoureiro:
		+ Substituir o Tesoureiro Geral em caso de impedimento ou afastamento e sucedê-lo no caso de ser solicitado, e:
		+ Auxiliar o Tesoureiro Geral no desempenho de suas funções.
	],
	[
		São atribuições da Diretoria de Planejamento:
		+ Fazer o planejamento anual do CACC;
		+ Coordenar a avaliação anual, junto com o presidente do planejamento anual;
		+ Responsabilizar-se pelo contato e captação de recursos externos;
		+ Articular as atividades de participação do corpo discente junto às áreas acadêmicas e comunitária;
		+ Zelar pelo aprimoramento do nível de ensino do curso;
		+ Intermediar, junto aos órgãos competentes, as questões relativas aos registros da vida acadêmica dos associados; e
		+ Cooperar com as demais diretorias e fornecer os dados ao Secretário Geral para a elaboração do relatório anual.
	],
	[
		São atribuições da Diretoria de Cultura e Esporte:
		+ Coordenar todas as atividades culturais e esportivas do CACC;
		+ Promover a integração destas mesmas atividades com as áreas de ensino, pesquisa e extensão da Universidade Federal do Pará;
		+ Sugerir medidas de ampliação do setor cultural dentro das possibilidades orçamentárias do CACC;
		+ Sugerir à Diretoria do CACC uma programação em consonância com as atividades do órgão responsável pelo Desporto da Universidade Federal do Pará;
		+ Promover palestras e seminários;
		+ Incentivar o envolvimento de todos os alunos nas mais variadas formas de esporte;
		+ Promover competições esportivas internas, comunitárias e o intercâmbio esportivo com outras entidades;
		+ Manter sob custódia todo o material desportivo pertencente ao CACC, apresentando ao final do mandato o inventário dos pertencentes do CACC; e
		+ Cooperar com as demais Diretorias e fornecer dados ao Secretário Geral para a elaboração do relatório anual.
	],
	[
		São atribuições da Diretoria de Design:
		+ Criar as artes e modelos para carteirinhas, camisas, banners, cartazes, panfletos, entre outros que o CACC precisará nas mais diversas situações e eventos; e
		+ Cooperar com as demais Diretorias e fornecer dados ao Secretário Geral para a elaboração do relatório anual.
	],
	[
		São atribuições da Diretoria de Ouvidoria:
		+ Prestar assistência aos alunos que tiveram seus direitos lesados ou ameaçados por atos ou omissão da administração pública;
		+ Analisar a mensagem recebida e, se necessário, encaminhar à diretoria do CACC pertinente, buscando a solução do problema dentro da organização, seja para prestação de esclarecimentos ou para adotar as providências cabíveis;
		+ Armazenar e avaliar as reivindicações dos alunos, com o objetivo de analisar os problemas mais comuns e se possível verificar a origem destes problemas para trata-la, de forma tal que o problema em questão não volte a se repetir ou que venha a ser minimizado; e
		+ Cooperar com as demais Diretorias e fornecer dados ao Secretário Geral para a elaboração do relatório anual.
	]
)

#art(
	caput: [A Coordenação Geral do CACC só poderá reunir-se com a maioria simples de seus membros.],
	[As deliberações da Coordenação Geral serão tomadas pela maioria simples dos membros presentes.]
)

#art(
	caput: [O mandato dos membros da Diretoria é de 2 anos, podendo estes reelegerem-se para os mesmos cargos],
	[
		Da exclusão ou saída voluntária de membros:
		+ Os membros do CACC devem honrar seu comprometimento para com a chapa eleita, sendo admitida a saída voluntária apenas em casos de força maior;
		+ No caso de saída voluntária o membro terá a responsabilidade de indicar um substituto que esteja ciente de suas responsabilidades para com o CACC;
		+ A exclusão de um membro do CACC deve ser tomada pela maioria simples dos membros em Assembleia Geral.
	]
)

#art(caput: [O CACC deve sempre zelar pela formação da consciência profissional e pelo entrosamento na comunidade.])

= Das Eleições

#art(
	caput: [Cabe a Diretoria do CACC nomear uma Comissão para superintender o processo eleitoral do Centro Acadêmico de Ciência da Computação.],
	[é vedado aos componentes dessa Comissão a participação em qualquer das chapas concorrentes, assim como, das campanhas eleitorais.]
)

#art(caput: [A Diretoria do CACC será eleita por votação, a que terão acesso todos os associados ao Centro Acadêmico de Ciência da Computação da Universidade Federal do Pará.])

#art(caput: [As eleições serão realizadas no segundo período letivo a cada dois anos.])

#art(
	caput: [A mesa receptora de votos será constituída por um presidente e dois secretários.],
	[O Presidente da mesa receptora será indicado pelo Diretor da Faculdade de Computação, dentre os seus docentes, seja qual for sua categoria ou regime de trabalho.],
	[Os Secretários serão indicados pelo CACC, dentre os seus associados não integrantes de quaisquer das chapas concorrentes.]
)

#art(caput: [O registro prévio das chapas será feito junto à Comissão Eleitoral com o prazo de limite de 3 dias de antecedência à realização das eleições.])

#art(caput: [São elegíveis apenas os associados ao CACC.])

#art(
	caput: [Cada chapa regularmente inscrita poderá credenciar um fiscal para a mesa receptora e acompanhamento da apuração.],
	[A indicação do fiscal deverá ser feita, com um tempo mínimo de 72 horas de antecedência da realização das eleições, à Comissão Eleitoral que encaminhará, com os documentos necessários, ao presidente da mesa.]
)

#art(caput: [Terminada a eleição, a mesa receptora passará a apuração, devendo o presidente da mesa, encaminhar à Comissão Eleitoral, dentro de 24 horas, o relatório, a ata e os demais documentos do processo eleitoral.])

#art(
	caput: [Considerar-se-á eleita a chapa que obtiver maior número de votos apurados, dando- se preferência, em caso de empate, a chapa cujos componentes apresentarem o maior número de créditos obtidos. Persistindo o empate, a chapa vencedora será indicada através de sorteio.],
	[Caso haja impugnação, esta deverá ser formulada no ato da apuração e constar na ata, assegurando-se o prazo de 48 horas para encaminhamento do recurso, junto à Comissão Eleitoral.],
	[Da decisão da Comissão Eleitoral caberá recurso, no prazo de 72 horas, junto ao Diretor da Faculdade de Computação da Universidade Federal do Pará.]
)

#art(caput: [A relação dos associados ao CACC será fornecida pela Entidade ou Faculdade encarregada do Controle Acadêmico, à Comissão Eleitoral, para posterior encaminhamento ao presidente da mesa receptora de votos.])

#art(
	caput: [A eleição deverá ser realizada dentro do recinto da Cidade Universitária Professor José Silveira Neto da Universidade Federal do Pará, em um só dia, durante a totalidade do horário das atividades escolares.],
	[A eleição será feita em votação secreta.]
)

#art(caput: [O mandato dos membros da Diretoria terá início com a posse, que será dada solenemente, pelo Diretor da Faculdade de Computação, uma semana após a divulgação dos resultados.])

= Das Assembléias

#art(
	caput: [A Assembléia Geral reunir-se-á, ordinariamente, uma vez por ano para apreciação do relatório anual da Diretoria.],
	[A Assembléia Geral Ordinária realizar-se-á em primeira convocação independente do número de associados presentes.],
	[A convocação da Assembléia Geral Ordinária do CACC será feita com pelo menos 3 dias úteis de antecedência.]
)

#art(
	caput: [A Assembléia Geral Extraordinária reunir-se-á sempre que a Diretoria do CACC julgar necessário ou quando for requerida por 1/3 dos associados.],
	[A Assembléia Geral Extraordinária será realizada em primeira convocação quando 1/2 do número de seus associados estiverem presentes.],
	[A primeira convocação da Assembléia Geral Extraordinária do CACC será feita pelo menos 1 dia útil de antecedência.],
	[A Assembléia Geral Extraordinária realizar-se-á em Segunda convocação com um número independente de associados.],
	[Entre cada uma das convocações a que se refere o parágrafo acima, haverá um tempo de 30 minutos.]
)

#art(caput: [As resoluções das Assembléias Gerais, Ordinárias e Extraordinárias, serão aprovadas por uma maioria simples dos votantes.])

#art(caput: [As reuniões das Assembléias Gerais serão conduzidas pelo critério das regras parlamentares convencionais, para assegurar a ordem e o prevalecimento de uma legítima democracia.])

#art(caput: [As Assembléias Gerais, Ordinárias e Extraordinárias, deverão realizar-se em horário a ser determinado pela Coordenação Geral.])

#art(caput: [participação dos alunos na reunião das Assembléias Gerais, Ordinárias ou Extraordinárias, não os eximirá de suas obrigações escolares.])

= Direitos e Deveres

#art(
	caput: [
		São direitos dos associados:
		+ Votar e ser votado nas eleições para o CACC;
		+ Dirigir-se ao CACC para tratar de seus interesses; e
		+ Todos os demais que decorrerem desse Regimento
	]
)

#art(
	caput: [
		São deveres dos associados:
		+ Cumprir e fazer cumprir o presente Regimento;
		+ Levar ao conhecimento do CACC fatos que devem por ele ser apreciados; e
		+ Trabalhar pelo estreitamento dos laços da fraternidade da comunidade acadêmica.
	]
)

= Penalidades

#art(caput: [São passíveis de penalidades somente os membros da Coordenação Geral do CACC.])

#art(caput: [As penalidades poderão ser aplicadas por deliberação da Coordenação Geral do CACC ou pela maioria simples dos associados.])

#art(caput: [Entende-se por penalidade um ato de advertência ou exclusão, que será aplicada de acordo com a gravidade da falta.])

= Da Receita e da Despesa

#art(
	caput: [
		São fontes de Receita:
		+ Contribuição dos alunos a ser deliberada anualmente pela Coordenação Geral do CACC;
		+ Auxílio dos poderes públicos, incluindo o próprio ICEN;
		+ Donativos de particulares; e
		+ Rendas próprias provenientes da prestação de serviços ou de qualquer outro tipo de iniciativa afim.
	]
)

#art(
	caput: [
		São meios de Despesas:
		+ Material de expediente do CACC;
		+ Aquisição do material literário-científico; e
		+ Fundo de recurso para atividades culturais, desportivas, recreativas e filantrópicas, assim como, outras atividades concomitantes com os interesses da coletividade.
	],
	[Os auxílios dos poderes públicos e os donativos de particulares serão entregues diretamente à Diretoria do CACC.]
)

= Das Disposições Finais e Transitórias

#art(
	caput: [O presente Estatuto somente poderá ser modificado por proposta da Coordenação Geral, ou 2/3, pelo menos, dos seus associados, aprovada por maioria simples dos votantes em Assembléia Geral do CACC, especialmente convocada, e com um quórum não inferior a 1/3 da totalidade dos seus associados.],
	[Aprovada a proposta de modificação deste Estatuto, a mesma deverá ser encaminhada a Diretoria do CACC para a devida homologação.]
)

#art(caput: [Uma vez tomadas decisões pela Assembléia Geral do CACC, somente caberá recurso, em única instância e por estrita acusação de ilegalidade, junto a Faculdade de Computação da Universidade Federal do Pará.])

#art(caput: [O presente Estatuto entrará em vigor após a sua aprovação, por maioria simples dos votantes, em Assembléia Geral do CACC, especialmente convocada e com um quórum não inferior a 1/3 da totalidade dos seus associados.])

#art(caput: [Os associados do CACC não têm obrigação de responder pelos compromissos assumidos pela sua Diretoria])

#art(
	caput: [Com finalidade de implantação do Centro Acadêmico de Ciência da Computação, a primeira Coordenação Geral será homologada em diferentes instâncias.],
	[Esta Coordenação Geral terá a mesma composição que suas sucessoras. As suas atribuições deverão estar de acordo com este Regimento.],
	[O tempo de mandato da primeira Coordenação Geral transcorrerá até o período de eleições, previsto neste Estatuto.]
)

#set par(spacing: 0.5em)

#align(center)[
	Universidade Federal do Pará - UFPA

	Centro Acadêmico de Ciência da Computação - CACC
]

